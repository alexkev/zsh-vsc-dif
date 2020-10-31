PLUGIN_LOCATION=${0:A:h}

function dif() {
    if [ "$1" = "delete" ]; then 
        exec mv dif* ~/.Trash 
    fi 

    if [ $# -eq 0 ]; then
        touch $PLUGIN_LOCATION/dif1.txt  $PLUGIN_LOCATION/dif2.txt 
        code --diff $PLUGIN_LOCATION/dif1.txt $PLUGIN_LOCATION/dif2.txt 
        exit
    fi
 
    if [[ "$1" == .* ]]; then
        touch $PLUGIN_LOCATION/dif1$1  $PLUGIN_LOCATION/dif2$1 
        code --diff $PLUGIN_LOCATION/dif1$1 $PLUGIN_LOCATION/dif2$1
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