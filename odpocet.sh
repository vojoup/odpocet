#!/bin/bash
 
# v argumentu dostane pocet vterin kolik ma pockat
# po skonceni odpoctu posle systemovou notifikaci s textem "Odpocet skoncil"
sleep "$1" && notify-send "Odpocet skoncil"
