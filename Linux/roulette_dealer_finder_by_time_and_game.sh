#!/bin/bash

# Script name: bonus.sh
# This script takes three arguments specific time, date and casino game played (in my program at least first 3 letters of the game name) and
# displays the dealer name for that play from the dealer_schedule file for that date(from Dealer_Analysis directory)
# -------------------------

# this function displays what should be current usage of the program case with proper format for date and time 
display_usage()
{
	echo "Usage: $0 [arguments]"
	echo "This script must be run with three arguments - first argument is time using HHAM or HHPM, second argument is date using MMDD format, and the third argument is the name of the game"
	echo "Example include: script 5am 0310 BlackJack or script 11PM 0312 Routlette"
}

# if argument no is not three call display function and exit

if [ $# -ne 3 ]
then
	echo "number of arguments are not equal to 3"
	display_usage
	exit
else
# number of arguments is equal to 3

	# Checking the time format HHAM/PM
	if [[ $1 =~ ^[0-9]{1,2}[aApP][mM]$ ]]
	then
		:
	else
        # display date is not in current format
		echo "time is not in right format"
		display_usage
		exit 
	fi

	# Adjusting the time format and prepend 0, if necessary
	length=$(echo $1|wc -c)
       	if [ $length -eq 4 ]
        then
        	T1=$(echo $1|cut -c1)
        	T="0"$T1
	       	AMPM=$(echo $1|cut -c2,3)
        elif [ $length -eq 5 ]
       	then
        	T=$(echo $2|cut -c1,2)
        	AMPM=$(echo $1|cut -c3,4)
       	fi

	# Checking the date format if date is in correct format(4 digits)
        if [[ $2 =~ ^[0-9]{4}$ ]]
        then
                :
        else
        #  display date is not in correct format  using display_usage function and come out
                echo "Date is not in right format "
                display_usage
                exit
        fi
	
        # setting the directory path and getting the file name based on the date  display message and exit
        current_dir=$(pwd)
	DIR="Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis"
        cd $DIR
	FILE=$(find -type f -name "$2*" | cut -c 3-)
	TIME=$T":00:00"
        cd $current_dir
        #   if file name not found exit 
        if [ -z "$FILE" ] 
        then
        	echo "No Record found"
        	exit 
        else
	# if file found
		GAME=$3
			echo -e "Date\tTime\t\tDealer\t\tGame"
                        echo -e "----\t----\t\t-----------\t-----------"
               # check if the first 3 letters of game name matches then display the dealer name for that time and game along with 
               # date and time
		if [[ $GAME =~ ^[Bb][Ll][Aa] ]]
		then
                        echo -e -n "$2\t"
			grep -i "$TIME $AMPM" $DIR/$FILE|awk -F "\t" '{print $1"\t"$2"\tBlackJack"}'
		
		elif [[ $GAME =~ ^[Rr][Oo][Uu] ]]
		then
			echo -e -n "$2\t"
			grep -i "$TIME $AMPM" $DIR/$FILE|awk -F "\t" '{print $1"\t"$3"\tRoulette"}'
		elif [[ $GAME =~ ^[Tt][Ee][Xx] ]]
		then
			echo -e -n "$2\t"
			grep -i "$TIME $AMPM" $DIR/$FILE|awk -F "\t" '{print $1"\t"$4"\tTexas_Hold_Em"}'
		else
               # if game name doesnot match
			echo "Unable to recognize the game name. Please enter the correct name(at least first 3 letters)"
		fi
        fi 
fi
