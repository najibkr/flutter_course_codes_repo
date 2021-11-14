# High School Grading System
1. Asks the user for his/her name
2. waits for the user to input his/her number
3. Once receiving the name input, the application asks the user to enter his/her number when ran
4. Waits for the user to enter a number
5. Diplays user grading in A, B, C, D system
    * Grade above hundred is displayed as incorrect
    * Grade between 90-100 is displayed as A-, A, A+
    * Grade between 80-90 is displayed as B-, B, B+
    * Grade between 70-80 is displaed as C-, C, C+
    * Grade between 60 - 70 is displayed as D,
    * Grade below 60 is displayed as failed. 

# Calculator Application
1. Ask the user to input the first number
2. wait for the user to input a number
3. Ask the user to input the operator
4. Ask the user to input the second number
5. Display the operation's result to the user


# Guessing Game:
This game has three levels, (easy, medium, hard). After the level is chosen by 
user, the user is asked to choose between 1-10, 1-50, or 1-100, based on the 
level chosen, repectively. Here is step by step explanation
1. Ask the user to choose a level (easy, medium, hard).
2. Wait for the user to input the level of her/his choice.
3. Display a message showing which level is the game being played to the user
4. Ask the user to guess a number between (1-10, 1-50 or 1-100, based on the level he is playing)
5. If the user guesses a wrong number display "Wrong Guess!".
   1. Ask the user to guess another number
6. if the user guesses a correct number, display "Correct, You won the game!"

# Simple User Authentication System
1. Asks the user to enter one of the following commands: signup, signin, exit
2. if the user enters exit, the application will be terminated
3. if the user enter signup, the user is asked to enter his/her full name, email and password, syncronously
4. the entered input should be saved in global variables respectively
5. After the user inputs all the needed information a success message should be displayed.
6. program loops back and displays the first command.
   1. if the user enters exit, the program terminates
   2. if the user enters signin, the user will be prompted for email and password sysncronously
   3. if the email and password matches the saved email and password
      1. the user is signed in and welcomed, will all his/her recorded info
      2. if the password or email is wrong I enter failure message is displayed.
      3. then, the programs loops back to the first command.