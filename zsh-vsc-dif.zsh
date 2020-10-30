PLUGIN_LOCATION=${0:A:h}
LIST_OF_FILE_EXTS=("
    c 
    cc  
    class 
    clj 
    cpp 
    cs 
    cxx 
    diff 
    el        
    go 
    h 
    htm
    html 
    java 
    js 
    js 
    json 
    l
    log 
    m 
    m4 
    md 
    patch 
    php 
    pl 
    po 
    py 
    rb 
    rs 
    rtf 
    sh 
    swift
    svg 
    ts 
    ts 
    tsx 
    txt 
    ua 
    vb 
    vcxproj 
    xcodeproj 
    xml 
    yml 
")   

function dif() {
    if [ $# -eq 0 ]; then
        touch $PLUGIN_LOCATION/dif1.txt  $PLUGIN_LOCATION/dif2.txt 
        code --diff $PLUGIN_LOCATION/dif1.txt $PLUGIN_LOCATION/dif2.txt 
        exit
    fi
 
    if [[ " ${LIST_OF_FILE_EXTS[@]} " =~ " $1 " ]]; then
        touch $PLUGIN_LOCATION/dif1.$1  $PLUGIN_LOCATION/dif2.$1 
        code --diff $PLUGIN_LOCATION/dif1.$1 $PLUGIN_LOCATION/dif2.$1
        exit
    fi

    DEFAULT_FILE=`echo $PLUGIN_LOCATION/dif.${1##*.}`
    ARG1=`echo $1`
    ARG2=`echo ${2:-$DEFAULT_FILE}`
    if [[ ! -e $DEFAULT_FILE ]]; then
        touch $DEFAULT_FILE
    fi
    code --diff $ARG1 $ARG2
}