#!/bin/bash
#Program Description:
#According to the instruction, for a particular date and time, when loss occured from the dealer_schedule file for that date, seperate the fi$
#-------

DIR="Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis"
FILE=0310_Dealer_schedule
TIME="08:00:00"
AMPM="AM"

grep "$TIME $AMPM" $DIR/$FILE|awk -F "\t" '{print $1"\t"$3}'
