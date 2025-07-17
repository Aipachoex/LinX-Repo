#!/bin/bash

# scene functions

north_door() {
	clear
	echo "You walk through the North door and it quickly slams behind you, it is now locked."
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
	echo -e "\nYou look back at the 3 new doors before you, where would you like to go now?"
    sleep 2
    echo -e "\nNorth, East, or West?"
    sleep 2
    while true; do
        read -rp "\nPlease type in a direction: " dir2
        case "${dir2,,}" in
            "north")
            #north_bronze function here
            break
            ;;
            "east")
            #east_bronze function here
            break
            ;;
            "west")
            #west_bronze function here
            break
            ;;
            *)
            echo -e "\nLet's try that again shall we?"
            ;;
    	esac
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
	echo -e "\nYou look back at the 3 new doors before you, where would you like to go now?"
    	sleep 2
    	echo -e "\nNorth, East, or West?"
    	sleep 2
    	while true; do
        read -rp "\nPlease type in a direction: " dir3
        case "${dir3,,}" in
            "north")
            #north_silver function here
            break
            ;;
            "east")
            #east_silver function here
            break
            ;;
            "west")
            #west_silver function here
            break
            ;;
            *)
            echo -e "\nLet's try that again shall we?"
            ;;
    	esac
    done

}

east_door() {
	clear
	echo "You walk through the East door and it quickly slams behind you, it is now locked."
	sleep 2
	echo -e "\nThe room looks similar to the previous room with three more doors, however there is something in the middle of the room."
	sleep 2
	echo -e "\nOn closer inspection the item appears to be a small gold coin."
	sleep 2
	while true; do
		echo -e "\nWill you pick it up or leave it?"
		read -rp "Type yes or no: " goldcoin
		if [[ "${goldcoin,,}" == "yes" ]]; then
			sleep 2
			echo -e "\nYou pick up the gold coin and put it in your pocket."
			break
		elif [[ "${goldcoin,,}" == "no" ]]; then
			sleep 2
			echo -e "\nYou leave the gold coin where it is."
			break
		else
			sleep 2
			echo -e "\nShall we try that again?"
			sleep 2
		fi
	done	
	echo -e "\nYou look back at the 3 new doors before you, where would you like to go now?"
    sleep 2
    echo -e "\nNorth, East, or West?"
    sleep 2
    while true; do
        read -rp "\nPlease type in a direction: " dir4
        case "${dir4,,}" in
            "north")
            #north_gold function here
            break
            ;;
            "east")
            #east_gold function here
            break
            ;;
            "west")
            #west_gold function here
            break
            ;;
            *)
            echo -e "\nLet's try that again shall we?"
            ;;
    	esac
    done
}

west_door() {
	clear
	echo "You walk through the West door and it quickly slams behind you, it is now locked."
	sleep 2
	echo -e "\nThe room looks similar to the previous room with three more doors, however there is something in the middle of the room."
	sleep 2
	echo -e "\nOn closer inspection the item appears to be a small platinum coin."
	sleep 2
	while true; do
		echo -e "\nWill you pick it up or leave it?"
		read -rp "Type yes or no: " platcoin
		if [[ "${platcoin,,}" == "yes" ]]; then
			sleep 2
			echo -e "\nYou pick up the platinum coin and put it in your pocket."
			break
		elif [[ "${platcoin,,}" == "no" ]]; then
			sleep 2
			echo -e "\nYou leave the platinum coin where it is."
			break
		else
			sleep 2
			echo -e "\nShall we try that again?"
			sleep 2
		fi
	done	
	echo -e "\nYou look back at the 3 new doors before you, where would you like to go now?"
    sleep 2
    echo -e "\nNorth, East, or West?"
    sleep 2
    while true; do
        read -rp "\nPlease type in a direction: " dir5
        case "${dir5,,}" in
            "north")
            #north_platinum function here
            break
            ;;
            "east")
            #east_platinum function here
            break
            ;;
            "west")
            #west_platinum function here
            break
            ;;
            *)
            echo -e "\nLet's try that again shall we?"
            ;;
    	esac
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
			east_door
			break
			;;
			"west")
			west_door
			break
			;;
			*)
			echo -e "/nNot sure what you're trying to do, so I guess we'll just stand here forever then."
			break
			;;
		esac
	done
}