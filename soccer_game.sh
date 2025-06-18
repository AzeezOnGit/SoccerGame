#!/bin/bash

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
		return 0
	else 
		echo "Oh well, thanks for playing!"
		return 1 #Exit early
	fi
}

choose_race() {
	read -p "Do you wanto to choose the race of your player? (y/n): " user_choice
	if [[ "$user_choice" == "y" || "Y" ]]; then
		echo "Pick any race you want. It can be a goofy one like elf or panda"
		read race 
		echo "Ha ha! I like that. Now we have your full player build."
		sleep 1
		return 0
	else
		echo "Oh well, thanks for playing"
		return 1 #Exit early
	fi
}

echo "Welcome to this soccer simulator game!"
echo "What is your name player?"
read username 
echo "Welome $username, get ready to have some fun!"

choose_class
choose_race