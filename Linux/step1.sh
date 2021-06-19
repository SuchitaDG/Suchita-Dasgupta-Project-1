#!/bin/bash

# Script Description
# Part of Unit 3 Homework step 1: Investigation Preparation
# This script creates the following directories
#    Lucky_Duck_Investigations 
#    Roulette_Loss_Investigation under Lucky_Duck_Investigations 
#    Player_Analysis under Lucky_Duck_Investigations/Roulette_Loss_Investigation
#    Dealer_Analysis under Lucky_Duck_Investigations/Roulette_Loss_Investigation
#    Player_Dealer_Correlation under Lucky_Duck_Investigations/Roulette_Loss_Investigation
#
# Creates an empty file called Notes_Player_Analysis under Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis
# Creates an empty file called Notes_Player_Analysis under Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis
# Creates an empty file called Notes_Player_Analysis under Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Dealer_Correlation
#    
mkdir -p Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Dealer_Correlation


touch Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Notes_Player_Analysis
touch Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/Notes_Dealer_Analysis
touch Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Dealer_Correlation/Notes_Player_Dealer_Correlation
