#!/bin/bash

choose_class() {
# Array for class
class_conditions=("Forward" "Midfielder" "Defender" "Goalie" "Coach")

# Function to choose class
choose_class() {
	read -p "Do you want to choose an available class? (y/n): " user_choice
	if [[ "$user_choice" == "y" || "Y" ]]; then 
		echo "Choose one of these classes: Forward, Midfielder, Defender, Goalie, Coach"
		read user_choice
		echo "What a great selection. This is going to be great"
		sleep 1
		exit 0
	else 
		echo "Oh well, thanks for playing!"
		return 1 #Exit early
	fi
}


echo "Welcome to this soccer simulator game!"
echo "What is your name player?"
read username 
echo "Welome $username, get ready to have some fun!"

fi