//I create an class called ball.
class Ball {

  //Declaring instance variables.
  int startX;
  int startY;

  //Declaring and iniatializing variables.
  int speedX = (int)random(-10, 10);
  int speedY = (int)random(1, 10);
  color startColor = color((int)(random(255)));
  int ballSize = 1;

  //The constructor takes three parameters
  Ball(int startX, int startY, int ballSize) {

    //Initializing the instance variables.
    this.startX = startX;
    this.startY  = startY;
    this.ballSize = ballSize;
  }

  //This function is used to display the ball.
  void display() {

    //Uses the instance variable to color the ball.
    fill(startColor);

    //Uses the instance variables to create the ellipse.
    ellipse(startX, startY, ballSize, ballSize);
  }

  /*This function is used to make the ball move on the x-accent.
   I have added the changecolor function to make the ball chance color whenever it hits edges.*/
  void moveX() {
    //Assigning startX a new value
    startX += speedX;

    //if-statements to keep track of the startX and avoiding it leave the screen, and also making it chance color.
    if (startX > width) {
      chanceColor();
      speedX *= -1;
    } else if (startX < 0) {
      chanceColor();
      speedX *= -1;
    }
  }

  /*This function is used to make the ball move on the y-accent.
   I have added the changecolor function to make the ball chance color whenever it hits edges.*/
  void moveY() {

    //Assigning startX a new value
    startY += speedY;

    //if-statements to keep track of the startY and avoiding it leave the screen, and also making it chance color.
    if (startY > height) {
      chanceColor();
      speedY *= -1;
    } else if (startY < 0) {
      chanceColor();
      speedY *= -1;
    }
  }

  //This function is used to chance color of the ball.
  int chanceColor() {

    //Assigning the instance variable startColor a new value.
    startColor = color((int)(random(255)), (int)(random(255)), (int)(random(255)));
    return startColor;
  }
}
