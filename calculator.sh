#!/bin/bash

while true; do
    echo "Select operation:"
    echo "1) Addition"
    echo "2) Subtraction"
    echo "3) Multiplication"
    echo "4) Division"
    read -p "Choice: " choice

    case $choice in
        1) op="+" ;;
        2) op="-" ;;
        3) op="*" ;;
        4) op="/" ;;
        *) 
            echo "Invalid option. Please try again."
            continue
            ;;
    esac

    read -p "Enter first number: " a
    read -p "Enter second number: " b

    # Check for division by zero
    if [[ "$op" == "/" && "$b" == "0" ]]; then
        echo "Error: Division by zero is not allowed."
        continue
    fi

    result=$(echo "$a $op $b" | bc -l)
    echo "Result: $result"
    echo

    # Ask if the user wants another calculation
    read -p "Do you want to perform another operation? (y/n): " again
    if [[ "$again" != "y" ]]; then
        echo "Goodbye!"
        break
    fi
done
