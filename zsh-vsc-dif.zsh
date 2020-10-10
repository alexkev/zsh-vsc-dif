PLUGIN_LOCATION=${0:A:h}

function dif() {
    if [ $# -eq 0 ]; then
        exec code --diff $PLUGIN_LOCATION/dif1 $PLUGIN_LOCATION/dif2
    fi
    DEFAULT_FILE=`echo $PLUGIN_LOCATION/dif.${1##*.}`
    ARG1=`echo $1`
    ARG2=`echo ${2:-$DEFAULT_FILE}`
    if [[ ! -e $DEFAULT_FILE ]]; then
        touch $DEFAULT_FILE
    fi
    code --diff $ARG1 $ARG2
}