#!/bin/bash
 
# v argumentu dostane pocet vterin kolik ma pockat
# po skonceni odpoctu posle systemovou notifikaci s textem "Odpocet skoncil"
if [ $# -eq 1 ]
then 
    sleep "$1" && notify-send "Odpocet skoncil"
else
   echo "Nezadan zadny argument!"
   echo "Zadej prave jedno cislo"
   exit 1;
fi
