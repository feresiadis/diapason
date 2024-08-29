# diapason
Guitar Tuner Script

This bash script is designed to assist guitar players in tuning their instrument. The script allows users to select from a set of musical notes (C, D, E, F, G, A, B) across different octaves, and plays the selected note using a sine wave to emulate the sound of a guitar. The note will continue to play with minimal delay between repetitions until the user decides to change the note or exit the script.

Features

    Continuous Playback: The selected note plays continuously with an extended sustain time of 5 seconds, which mimics the sustain of a classical guitar.
    Immediate Repetition: After the note finishes playing, it repeats almost immediately, providing a seamless listening experience for tuning.
    Interactive Note Selection: Users can choose different notes interactively. The script remains active until the user explicitly exits.
    User-Friendly Interface: The available notes are displayed each time a note is played, making it easy for users to switch between notes.

Prerequisites

    Operating System: Linux (should work on most Linux distributions).
    Dependencies: Ensure that sox (Sound eXchange) is installed on your system.

Usage

    Run the Script:
        Download or clone the repository containing the script.
        Open a terminal and navigate to the directory where the script is located.
        Make the script executable by running: chmod +x diapason.sh.
        Execute the script by typing: ./diapason.sh.

    Select a Note:
        After running the script, you'll be prompted to enter a musical note (e.g., C4, A3).
        The script will continuously play the selected note until you press a key to interrupt it.

    Change Notes or Exit:
        Press any key while a note is playing to stop it.
        Enter a new note to continue tuning or type exit to quit the script.
