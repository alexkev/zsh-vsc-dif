PLUGIN_LOCATION=${0:A:h}
OUTPUT_LOCATION=$(dirname $PLUGIN_LOCATION)/zsh-vsc-dif-output

function dif() {
    mkdir -p $OUTPUT_LOCATION

    if [ "$1" = "delete" ]; then
        exec mv $OUTPUT_LOCATION/dif* ~/.Trash
    fi

    if [ $# -eq 0 ]; then
        touch $OUTPUT_LOCATION/dif1.txt $OUTPUT_LOCATION/dif2.txt
        code --diff $OUTPUT_LOCATION/dif1.txt $OUTPUT_LOCATION/dif2.txt
        exit
    fi

    if [[ "$1" == .* ]]; then
        touch $OUTPUT_LOCATION/dif1$1 $OUTPUT_LOCATION/dif2$1
        code --diff $OUTPUT_LOCATION/dif1$1 $OUTPUT_LOCATION/dif2$1
        exit
    fi

    DEFAULT_FILE=$(echo $OUTPUT_LOCATION/dif.${1##*.})
    ARG1=$(echo $1)
    ARG2=$(echo ${2:-$DEFAULT_FILE})
    if [[ ! -e $DEFAULT_FILE ]]; then
        touch $DEFAULT_FILE
    fi
    code --diff $ARG1 $ARG2
}
