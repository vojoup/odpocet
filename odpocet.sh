#!/bin/bash
 
cas="30"
text="Odpocet skoncil!"

usage="$(basename "$0") [-h] [-t n, -u string] script na odpocet
    where:
        -h  shows this help
        -t  nastavi cas na n vterin
        -u  text upozorneni "

while getopts ':ht:u:' option; do
    case "$option" in
        h) echo "$usage"
           exit
           ;;
        t) cas="$OPTARG"
           ;;
        u) text="$OPTARG"
           ;;
        :) echo "Illegal option : -$OPTARG" >&2
           echo "$usage" >&2
           exit 1
           ;;
    esac
done

shift $((OPTIND - 1 ))

sleep "$cas" && notify-send "$text"
