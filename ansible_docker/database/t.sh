echo "${1:0:1}"
if [ "${1:0:1}" = '-' ]; then
    set -- postgres "$@"
    echo "$@"
    echo "$1"
fi
