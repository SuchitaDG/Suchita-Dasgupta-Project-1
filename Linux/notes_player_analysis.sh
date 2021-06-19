#!/bin/bash
#Program description: Part of step 3
#This program records in the Notes_Player_Analysis file by previewing Roulette_Losses File and also  searching the Roulette losses file to get  the counts	 
#------------------------------------------------------------------------
No_of_times_Losses_0310=$(grep 0310 Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Roulette_Losses|wc -l)
No_of_times_Losses_0312=$(grep 0312 Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Roulette_Losses|wc -l)
No_of_times_Losses_0315=$(grep 0315 Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Roulette_Losses|wc -l)
No_of_times_player_played=$(grep 'Mylie Schmidt' Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Roulette_Losses|wc -l)

echo "The times the losses occured on March 10 : $No_of_times_Losses_0310 ">Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Notes_Player_Analysis
echo "The times the losses occured on March 12 : $No_of_times_Losses_0312 ">>Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Notes_Player_Analysis
echo "The times the losses occured on March 13 : $No_of_times_Losses_0315 ">>Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Notes_Player_Analysis


echo "Previewing the File Roulette_Losses, the player who was playing each of the times is : Mylie Schmidt" >> Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Notes_Player_Analysis
echo "The total count of times this player was playing : $No_of_times_player_played" >> Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis/Notes_Player_Analysis 
