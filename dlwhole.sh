#/bin/bash
while getopts "d:" arg; do
  case $arg in
    d)
      mkdir "${OPTARG}"
      cd "${OPTARG}"
      shift
      shift
      ;;
  esac
done

for j in $(seq $2 $3 $4) 
do
  wget "$1$j$5" -q -o /dev/null & 
done
