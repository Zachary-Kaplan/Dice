Die gorko;
int total = 0;

void setup()
{
  size(500,500);
  noLoop();
}

void draw()
{
  background(250,250,250);
  for (int xPos = 10; xPos < 480; xPos+=25)
  {
    for (int yPos = 10; yPos < 480; yPos+=25)
    {
      gorko = new Die(xPos,yPos);
      gorko.diceRoll();
      gorko.show();
    }
  }
  text(total,0, 490);
}

void mousePressed()
{
  redraw();
  background(250,250,250);
}

class Die
{
  
  //sets up the coordinates
  int xCoord, yCoord, roll;
  Die(int x, int y)
  {
    xCoord = x;
    yCoord = y;
  }
  
  //rolls the die
  void diceRoll()
  {
    roll = 1 + (int)(6 * Math.random());
    total+=roll;
  }
  
  void show()
  {
    //dice body
    fill(237, 237, 223);
    rect (xCoord, yCoord, 20, 20);
    
    //dots on the dice rolls
    fill(0,0,0);
    if ((roll == 1) || (roll == 3) || (roll == 5))
    {
      ellipse(xCoord + 10, yCoord + 10, 4, 4);
    }
    if (roll != 1)
    {
      ellipse(xCoord + 5, yCoord + 15, 4, 4);
      ellipse(xCoord + 15, yCoord + 5, 4, 4);
    }
    if ((roll == 4) || (roll == 5) || (roll == 6))
    {
      ellipse(xCoord + 5, yCoord + 5, 4, 4);
      ellipse(xCoord + 15, yCoord + 15, 4, 4);
    }
    if (roll == 6)
    {
      ellipse(xCoord + 5, yCoord + 10, 4, 4);
      ellipse(xCoord + 15, yCoord + 10, 4, 4);
    }
  }
}
