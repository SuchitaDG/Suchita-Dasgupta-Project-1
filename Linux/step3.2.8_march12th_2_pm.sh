#!/bin/bash

DIR="Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis"
FILE=0312_Dealer_schedule
TIME="02:00:00"
AMPM="PM"

grep "$TIME $AMPM" $DIR/$FILE|awk -F "\t" '{print $1"\t"$3}'
