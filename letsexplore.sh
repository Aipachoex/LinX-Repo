#!/bin/bash

# scene functions

north_door() {
	clear
	echo -e "\nYou walk through the North door and it quickly slams behind you, it is now locked."
	sleep 2
	echo -e "\nThe room looks similar to the previous room with three more doors, however there is something in the middle of the room."
	sleep 2
	echo -e "\nOn closer inspection the item appears to be a small bronze coin."
	sleep 2
	while true; do
		echo -e "\nWill you pick it up or leave it?"
		read -rp "Type yes or no: " broncoin
		if [[ "${broncoin,,}" == "yes" ]]; then
			sleep 2
			echo -e "\nYou pick up the bronze coin and put it in your pocket."
			break
		elif [[ "${broncoin,,}" == "no" ]]; then
			sleep 2
			echo -e "\nYou leave the bronze coin where it is."
			break
		else
			sleep 2
			echo -e "\nShall we try that again?"
			sleep 2
		fi
	done
	
}


south_door() {
	clear
	echo "You walk through the South door and it quickly slams behind you, it is now locked."
	sleep 2
	echo -e "\nThe room looks similar to the previous room with three more doors, however, there is something in the middle of the room."
	sleep 2
	echo -e "\nOn closer inspection the item appears to be a small silver coin."
	sleep 2
	while true; do
		echo -e "\nWill you pick it up or leave it?"
		read -rp "Type yes or no: " silvcoin
		if [[ "${silvcoin,,}" == "yes" ]]; then
			sleep 2
			echo -e "\nYou pick up the silver coin and put it in your pocket."
			break
		elif [[ "${silvcoin,,}" == "no" ]]; then
			sleep 2
			echo -e "\nYou leave the silver coin where it is."
			break
		else
			sleep 2
			echo -e "\nShall we try that again?"
			sleep 2
		fi
	done
}


intro_scene() {
	echo "Let us begin your journey."
	sleep 2
	echo -e "\nYou stand alone in an empty room surrounded by 4 white walls."
	sleep 2
	echo -e "\nA door starts to slowly materialize on each wall."
	sleep 2
	echo -e "\nWhere would you like to go? North, South, East, or West?"
	sleep 2
	while true; do
		read -rp "Please type in a direction: " direction
		case "${direction,,}" in
			"north")
			north_door
			break
			;;
			"south")
			south_door
			break
			;;
			"east")
			#East_door function here
			break
			;;
			"west")
			#West_door function here
			break
			;;
			*)
			echo -e "/nNot sure what you're trying to do, so I guess we'll just stand here forever then."
			break
			;;
		esac
	done
}
