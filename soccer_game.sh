#!/bin/bash

# Array for class
player_classes=("Forward" "Midfielder" "Defender" "Goalie" "Coach")
# Function for forward stats
forward_stats() {
	echo "Let's start with the forward. This player is an offensive beast. They are fast, can score the ball well, and are strong against defenders."
}

# Function for midfielder stats
midfielder_stats() {
	echo "This player is a genuis on the ball. This player can dicatate the tempo of the game and always pick out the right passes. This player is a forwards dream."
}

# Function for defender stats 
defender_stats() {
	echo "This player is a core part of the game. This player is the rock of the team and the player who stops forwards from scoring 10 plus goals a game."
}

# Function for goalie stats
goalie_stats() {
	echo "This player is the person behind the net. The shot blocker, the brick wall, the savior. This player has crazy reflexes when saving the ball as well."
}

# Function for coach stats
coach_stats() {
	echo "This player is the tactician and the decision maker of a team. This player can either win a game or lose a game for the team horribly."
}
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
echo "In this game, you will be given the option to choose between different player classes, and their statistics beforehand to help you with your decision."

echo "Here are the available positions and statistics:"

for class in "${player_classes[@]}"; do
	case "$class" in 
		"Forward") forward_stats ;;
		"Midfielder") midfielder_stats ;;
		"Defender") defender_stats ;;
		"Goalie") goalie_stats ;;
		"Coach") coach_stats ;;
	esac
	sleep 1
done
echo "That is evrything"
choose_class
choose_race