#!/bin/bash

back="0"
cas="30"
text="Odpocet skoncil!"

usage="$(basename "$0") [-h] [-t n, -u string] script, ktery simuluje timer
    prepinace:
        -h  shows this help
        -t  nastavi cas na n vterin
        -u  text upozorneni 
        -b spusteni scriptu napozadi"

while getopts ':bht:u:' option; do
    case "$option" in
        b) back="1"
           ;;
        h) echo "$usage"
           exit
           ;;
        t) cas="$OPTARG"
           ;;
        u) text="$OPTARG"
           ;;
        :) echo "Neznamy prepinac: -$OPTARG" >&2
           echo "$usage" >&2
           exit 1
           ;;
    esac
done

shift $((OPTIND - 1 ))
if [ $back -eq 0 ]
then
    sleep "$cas" && notify-send "$text"
else
    $(sleep "$cas" && notify-send "$text") &
fi
