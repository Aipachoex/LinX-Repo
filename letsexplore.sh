#!/bin/bash

# Reusable room scene function
room_scene() {
    local coin="$1"               # e.g., "bronze", "silver", etc.
    local next_north="$2"         # function to call when going north
    local next_east="$3"          # function to call when going east
    local next_west="$4"          # function to call when going west

    clear
    echo "You walk through the door and it quickly slams behind you. It is now locked."
    sleep 2
    echo -e "\nThe room looks similar to the previous one, with three more doors. In the center, something glimmers..."
    sleep 2
    echo -e "\nOn closer inspection, it's a small $coin coin resting on a stone pedestal."
    sleep 2

    while true; do
        echo -e "\nWill you pick it up or leave it?"
        read -rp "Type yes or no: " choice
        case "${choice,,}" in
            "yes")
                echo -e "\nYou pick up the $coin coin and tuck it into your pouch."
                break
                ;;
            "no")
                echo -e "\nYou decide to leave the $coin coin where it lies."
                break
                ;;
            *)
                echo -e "\nPlease answer with yes or no."
                sleep 1
                ;;
        esac
    done

    echo -e "\nThree doors await you: North, East, and West."
    sleep 1

    while true; do
        read -rp "Which direction do you choose? " direction
        case "${direction,,}" in
            "north")
                $next_north
                break
                ;;
            "east")
                $next_east
                break
                ;;
            "west")
                $next_west
                break
                ;;
            *)
                echo -e "\nThat's not a valid direction. Try North, East, or West."
                ;;
        esac
    done
}

# Starter rooms
north_door() {
    room_scene "bronze" "north_bronze" "east_bronze" "west_bronze"
}

south_door() {
    room_scene "silver" "north_silver" "east_silver" "west_silver"
}

east_door() {
    room_scene "gold" "north_gold" "east_gold" "west_gold"
}

west_door() {
    room_scene "platinum" "north_platinum" "east_platinum" "west_platinum"
}

# Starting point
echo -e "\nYou awaken in a dim chamber lit by a flickering torch on the wall..."
sleep 2
echo -e "\nThere are four doors before you: North, South, East, and West."
sleep 2

while true; do
    read -rp "Which door do you enter? " choice
    case "${choice,,}" in
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
            echo -e "\nTry choosing one of the four directions: North, South, East, or West."
            ;;
    esac
done
