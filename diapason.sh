#!/bin/bash

# Define note frequencies for the seven notes across different octaves
declare -A notes
notes=(
    ["C3"]=130.81  # C note, octave 3
    ["D3"]=146.83  # D note, octave 3
    ["E3"]=164.81  # E note, octave 3
    ["F3"]=174.61  # F note, octave 3
    ["G3"]=196.00  # G note, octave 3
    ["A3"]=220.00  # A note, octave 3
    ["B3"]=246.94  # B note, octave 3
    ["C4"]=261.63  # C note, octave 4 (Middle C)
    ["D4"]=293.66  # D note, octave 4
    ["E4"]=329.63  # E note, octave 4
    ["F4"]=349.23  # F note, octave 4
    ["G4"]=392.00  # G note, octave 4
    ["A4"]=440.00  # A note, octave 4 (Standard tuning A)
    ["B4"]=493.88  # B note, octave 4
)

# Function to play the selected note repeatedly until interrupted
play_note() {
    local note=$1
    local frequency=${notes[$note]}
    echo "Playing the note $note at frequency $frequency Hz... (Press any key to change the note)"
    
    # Loop to repeat the note until a key is pressed
    while : ; do
        play -n synth 16 pluck $frequency &
        pid=$!  # Get the process ID of the play command
        
        # Wait for user input or the play command to finish
        read -t 5 -n 1 new_note_input
        if [ $? -eq 0 ]; then
            kill $pid 2>/dev/null  # Kill the play process if user presses a key
            break  # Exit the loop to allow note change
        fi
    done
}

# Main loop to keep the script running until the user decides to exit
while true; do
    # Display available notes
    echo "Available notes: ${!notes[@]}"
    echo "Enter the note you want to play (e.g., C4, A3) or type 'exit' to quit:"
    read user_input

    if [[ $user_input == "exit" ]]; then
        echo "Exiting the tuner."
        break
    elif [[ -v notes[$user_input] ]]; then
        play_note $user_input
    else
        echo "Invalid input. Please enter a valid note or type 'exit' to quit."
    fi
done
