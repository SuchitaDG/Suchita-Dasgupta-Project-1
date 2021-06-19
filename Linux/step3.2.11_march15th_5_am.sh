#!/bin/bash

DIR="Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis"
FILE=0315_Dealer_schedule
TIME="05:00:00"
AMPM="AM"

grep "$TIME $AMPM" $DIR/$FILE|awk -F "\t" '{print $1"\t"$3}'
