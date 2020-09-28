# Bash-Quest
A text based adventure in your Shell!

## Table of Contents

* Your Task
* Getting Started
* Sample Adventure
* How it Works
  - How Rooms Work
  - Initializing Your Adventure
* Milestones
  - Milestone 1: Design Document and Adventure README.md
  - Milestone 2: Create a Win Test
  - Milestone 3: Completed Adventure
* Grading
* Getting Help

## Your Task

Create a new adventure that can be run using the `play.sh` script.

*Requirements:*

1. Design Document and Adventure README.md
2. Create a win test
3. Implement your adventure

*Bonus Material*

1. Implement multiple endings
2. Implement tests for each ending
3. Use ASCII graphics

### Getting Started

First, fork a copy of this repository. Then create a new branch:

`git checkout -b {USER_NAME}`

Next, add that branch to Github:

`git push -u origin {USER_NAME}`

### Sample Adventure

A sample adventure is available in the `cave` directory. To play it, run `bash
play.sh cave`.

### How it Works

Bash-Quest is simply a "Game Loop" that utilizes specific files in a directory
to create a text based adventure.

#### How Rooms Work

Each adventure is a series of Rooms that the player navigates between by enter
commands. A room is simply a directory on your computer that contains a
`description.txt` file and `handler.sh` file. When the player is in a room, the
`description.txt` will be printed to the terminal. The player will then be asked
to enter a command. After the command has been entered, it is stored in the
`$ACTION` shell variable and the `handler.sh` script runs. The `handler.sh`
script can use the `$ACTION` variable to make decisions about where to navigate
next.

#### Initializing the Adventure

Each adventure has an `init.sh` script which is executed once at the very
beginning of the adventure. This is used to create variables and utility
functions as well as move the player to the first room.

### Milestones

#### Milestone 1
##### Design Document and Adventure README.md

*Due Date*: Thursday, October 1 @ 8 AM

Your adventure must contain a design document showing each room and how those
rooms are connected. This document may be hand drawn and scanned / photographes
BUT the image must be legible and contain the puzzle or puzzles contained in
your adventure.

In addition to a design document, you must create a basic README.md file for
your adventure. This file should contain the following sections: Description,
Game Map, Puzzles, Tests, and Known Bugs. Feel free to copy the README.md
located in the `cave` adventure and modify it to meet your needs.

#### Milestone 2
##### Create a Win Test

*Due Date*: Monday, October 5 @ 8 AM

Your adventure must contain a win test located at `ADVENTURE_NAME/tests/win`.
Use your design document to write out the commands that will be necessary to
complete your adventure. See `cave/tests/win` for an example of how to write
your test file.

#### Milestone 3
##### Completed Adventure

*Due Date*: Monday, Oct 12 @ 8 AM

Your completed, playable adventure must be submitted by this time.

Additionally, your design document and tests folders must be updated to match
the final version of your adventure. This includes a full description of the
adventure and a complete test that will walk the player through the entire
adventure.

Finally, any known bugs must be reported in the `Known Bugs` section of the
README.md.

### Grading

#### Computational Thinking

In this assignment, you must demonstrate your understaing of variables and if
statements in the context of bash scripting and BASH quest.

| Advanced                                                                            | Proficient                                                                                                                                                             | Basic                                                                                                                             | Below Basic                                                                                                                       |
|-------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|
| Student utilizes more than 5 variables                                              | Student utilizes 5 variables                                                                                                                                           | Student utilizes 3 variables                                                                                                      | Student utilizes less than 3 variables                                                                                            |
| Student creates more than 10 rooms                                                  | Student creates 10 rooms                                                                                                                                               | Student creates 5 rooms                                                                                                           | Student creates less than 5 rooms                                                                                                 |
| Student utilizes nested if, elif,  and else statements to create branching dialogue | Student utilizes basic if, elif, and else statements                                                                                                                   | Student uses if and else statements                                                                                               | Student does not use if statements                                                                                                |
| Adventure is playable, all listed options can be typed by the player without error. | Adventure is playable, almost all listed options can be typed by the player without error. One or two known bugs are listed in the known bugs section of the README.md | Adventure is playable but many options are not available or cause the game to  crash or "break". Bugs are listed in the README.md | Adventure is not playable. Most of the options do not work or cause the game to crash. Few or no bugs are listed in the README.md |
| Student added ASCII Art to the adventure                                            |                                                                                                                                                                        |                                                                                                                                   |                                                                                                                                   |

#### Computing Programming and Practice

In this assignment, you must create at least one test for your adventure
demonstrating how to complete your puzzle. Additionally, you should comment your
code and create log entries each time you work on the project.

| Advanced                                                                                                                                                                                                                     | Proficient                                                                                                                              | Basic                                                                                          | Below Basic                                                                       |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| Student created tests demonstrating  multiple endings                                                                                                                                                                        | Student created a test demonstrating one ending  and provided comments detailing the test                                               | Student created a test but it does not contain comments or does not work.                      | Student did not complete a test                                                   |
| Student wrote comments detailing each action the player can take as well as the result of those actions                                                                                                                      | Student commented each action the player can make                                                                                       | Student wrote some comments                                                                    | Student did not write comments                                                    |
| Student made both sign-on and sign-off log entries throughout the course of the project that detailed the work they were doing. All log entries were added, committed, and pushed shortly after the time stamp on the entry. | Student made sign-on or sign-off log entries throughout the project but they were not pushed to Github near the time they were written. | Student made log entries but the dates / times are not consistent with being pushed to Github. | Student made few sign-on / sign-offs entires and/or missed sign-offs or sign-ons. |

#### Skills of a Student

Your skills of a student covers your StudentLog repository, your in class time
management, meeting deadlines, asking for help when needed, and helping others
when able.

| Advanced                                                                           | Proficient                   | Basic                                                    | Below Basic                                          |
|------------------------------------------------------------------------------------|------------------------------|----------------------------------------------------------|------------------------------------------------------|
| Manages time well in class, stays focused on work  at hand at all times            | Focuses on work in class     | Focuses at times, can get distracted                     | Uses class time poorly, is frequently distracted     |
| Meets all deadlines, on or ahead of schedule                                       | Meets deadlines              | Delivers close to deadline, may be late  by a day or two | Delivers work late or not at all                     |
| Advocates for self, seeks clarification when needed  and volunteers to help others | Seeks assistance when needed | Needs prompting to seek assistance                       | Does not seek assistance or ask for help when needed |

### Getting Help

All questions should be posted to the class Piazza board. You are also
encouraged to help other students who post on Piazza. When you post your
question, be sure to include as many details as possible for reproducing the
issue you're having.

Questions you should answer when asking a question include:

1. What are you trying to do?
2. What did you try?
3. What was the result?

Work hard to make sure the person trying to answer your question can reproduce
your error. Share your files so others can run exactly what you're running.

Also, include screenshot!

Formulating good questions is a good life long skill. You should try asking your
question on Piazza before seeking out synchronous time with Mx. Collard.
However, if you would like to meet to discuss synchronously, first, look at [Mx.
Collard's Calendar](http://tinyurl.com/mx-collard-calendar), then send them an
email with at least two proposed times you would like to meet.