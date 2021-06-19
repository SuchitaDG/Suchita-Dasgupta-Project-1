#!/bin/bash

# Script name: roulette_dealer_finder_by_time.sh
#This script takes arguments date and  time and and displays the dealer name,date,time from the dealer_schedules file for that particular date and from Dealer_Analysis directory
# for the Roulette game
#--------------------

# This function displays the proper usage
display_usage()
{
	echo "Usage: $0 [arguments]"
	echo "This script must be run with two arguments: First argument is date in MMDD format and the second argument is time in HHAM or HHPM format"
	echo "Example include: script 0310 5am or script 0312 11PM"
}

#if argument is not two
if [ $# -ne 2 ]
then
	echo "number of arguments are not equal to 2"
	display_usage
else
	# Checking the date format
	if [[ $1 =~ ^[0-9]{4}$ ]]
	then
		:
	else
		echo "Date is not in right format "
		display_usage
		exit 
	fi

	# Checking the time format
	if [[ $2 =~ ^[0-9]{1,2}[aApP][mM]$ ]]
	then
		:
	else
		echo "time is not in right format"
		display_usage
		exit 
	fi
	# Adjusting the time format and prepend 0, if necessary
	length=$(echo $2|wc -c)
       	if [ $length -eq 4 ]
        then
        	T1=$(echo $2|cut -c1)
        	T="0"$T1
	       	AMPM=$(echo $2|cut -c2,3)
        elif [ $length -eq 5 ]
       	then
        	T=$(echo $2|cut -c1,2)
        	AMPM=$(echo $2|cut -c3,4)
       	fi
        # setting the directory and file - file is based on the date given
        current_dir=$(pwd)
	DIR="Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis"
        cd $DIR
	FILE=$(find -type f -name "$1*" | cut -c 3-)
	TIME=$T":00:00"
        cd $current_dir
        # if file not found
        if [ -z "$FILE" ] 
        then
        	echo "No Record found"
        	exit 
        else
        # display the Roulette dealer with date and time
		echo -e -n "Date\t"
		echo -e -n "Time\t\t"
		echo "Roulette Dealer"
		echo -e "----\t----\t\t---------------"
		echo -e -n "$1\t"
        	grep -i "$TIME $AMPM" $DIR/$FILE|awk -F "\t" '{print $1"\t"$3}'
        fi 

fi
