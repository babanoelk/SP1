class Ball {

  //Instance variables.
  int startX;
  int startY;
  int speedX = (int)random(-10,10);
  int speedY = (int)random(1,10);
  color startColor = color((int)(random(255)));
  int ballSize = 1;

  //The constructor
  Ball(int startX, int startY, int ballSize) {

    this.startX = startX;
    this.startY  = startY;
    this.ballSize = ballSize;
  }

  //This function is used to display the ball.
  void display() {
    fill(startColor);
    ellipse(startX, startY, ballSize, ballSize);
  }

  /*This function is used to make the ball move on the x-accent.
   I have added the changecolor function to make the ball chance color whenever it hits edges.*/
  void moveX() {
    startX += speedX;
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
    startY += speedY;
    if (startY > height) {
      chanceColor();
      speedY *= -1;
    } else if (startY < 0) {
      chanceColor();
      speedY *= -1;
    }
  }

  //This function is used to make the ball chance color.
  int chanceColor() {
    startColor = color((int)(random(255)), (int)(random(255)), (int)(random(255)));
    return startColor;
  }
}
