#!/bin/sh
#Program Description:Step3.1 Correlating the evidence
# In this script,navigating to the  Player_Analysis directory we collect data for the all the losses for March10,12,15  and place the res
#ult to Rouleete_losses file 

CURRENT_DIR=$(pwd)
DIR=Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis

cd $DIR
FILES="031[025]_win_loss_player_data"
grep '\-''\$'[0-9] $FILES >Roulette_Losses

cd $CURRENT_DIR

