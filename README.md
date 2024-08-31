# diapason
https://www.oed.com/dictionary/diapason_n?

Guitar Tuner Script

The provided Bash script is a simple musical tuner that allows the user to play specific musical notes from different octaves. 
It defines a set of notes along with their corresponding frequencies and enables the user to play these notes repeatedly until a key is pressed to either change the note or exit the program. 
It is a simple tool for musicians who want to tune their instruments or practice ear training by repeatedly playing specific notes. 

 Script Features

Notes Defined: The script defines notes from octaves 3 and 4, including common notes like C3, D4, A4, etc.
Continuous Playback: Notes are played continuously in a loop until the user interrupts.
Dynamic Note Selection: Users can dynamically select and change notes while the script is running.

Prerequisites

    Operating System: Linux (should work on most Linux distributions).
    Dependencies: Ensure that sox (Sound eXchange) is installed on your system.

Usage

Make the script executable: chmod +x diapason.sh

Run the script: ./diapason.sh

After running the script, it will display a list of available notes that you can play.
You will be prompted to enter a note (e.g., C4, A3).
The script will play the selected note continuously at its defined frequency.
To change the note, press any key while the note is playing, then enter a new note.
To exit the tuner, type exit.

Example Usage

When prompted, enter A4 to play the A4 note at 440 Hz.
Press any key to stop the note and change to another one.
Enter exit to stop the script.
