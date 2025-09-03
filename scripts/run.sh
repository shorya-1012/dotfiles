#!/bin/bash 


if [ -z "$1" ]; then
  echo "No file provided"
  exit
fi


IFS='.' read -ra fileData <<< "$1"

if [ "${#fileData[@]}" -ne 2 ]; then
  echo "Invalid file format provided"
  exit
fi

case "${fileData[1]}" in 
  "cpp")
    g++ -std=c++23 -Wall -Wextra -o program "$1"
    ./program
    rm program
    ;;
  "c")
    gcc -Wall -Wextra -o program "$1"
    ./program
    rm program
    ;;
  "py")
    python3 "$1"
    ;;
  "js")
    node "$1"
    ;;
  *) 
    echo "Unknown File provided"
    ;;
esac
