//SP1 Assignment - Written by Ahmad
/* I want to make a game with bouncing balls. For every key that is pressed, a new ball will spawn.
 These balls will be bouncing around the window without leaving the screen. When hitting the edges it will change color */

//Declaring and initializing global variables.
int balls              = 200; //Write here how many balls can be spawn
int counterPressed     = 0; //Counts how many times keys of the keyboard have been pressed.

//Declaring an global array variable with the name b1. Then I initiliaze it with the global variable balls.
Ball[] b1 = new Ball[balls]; //Creates balls from the global balls variable.


//---------
void keyPressed() { //Function to add a ball when key pressed.
  counterPressed = counterPressed + 1; //Increments to the global variable every time a key has been pressed.
}

void setup() {
  //Creating the size of the screen.
  size(1200, 800);

  //A for-loop that to create values to every index. Starting from index 0 and then it assigns every index two random numbers between from 1 to the screens height incremented by 1.
  for (int index = 0; index < b1.length; index++) {
    b1[index] = new Ball((int)random(0, width), (int)random(0, height), (int)random(1, 200));
  }
}

void draw() {
  //Keeps creating the background color.
  background(60);

  //A for-loop with the local variable index. It has an condition (counterPressed) showing how many balls will be visible to the eye. I starts with 0 and then it incrementes to show the functions.
  //Calling upon the functions related to the object.
  for (int index = 0; index < counterPressed; index++) {
    b1[index].display(); //Displaying the ball from the given index.
    b1[index].moveX(); //Using the mouseX function to make the ball move from the given index.
    b1[index].moveY(); //Using the mouseY function to make the ball move from the given index.
  }
}
