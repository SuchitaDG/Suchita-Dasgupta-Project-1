#!/bin/bash

# Script Description
# Part of Unit 3 Homework step 2: Gathering Evidence
# Downloading the files and directories necessary to complete this homework using wget command
# Moving files for the days losses happened  March10,12,15 from Dealer_Schedules_0310 and Roulete_Player_Winloss_0310 to Dealer_Analysis 
# and Player_ Analysis  directories resp 
# 

wget "https://tinyurl.com/3-HW-setup-evidence" && chmod +x ./3-HW-setup-evidence && ./3-HW-setup-evidence

find Dealer_Schedules_0310 -type f -iname "031[025]_Dealer_schedule" -exec mv {} Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/ \;

find Roulette_Player_WinLoss_0310 -type f -iname "031[025]_win_loss_player_data" -exec mv {} Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/ \;


