Float x1 = 10.0;
Float y1 = 779.0;
Float Movement = 3.0;
Float x2 = 105.0;
Float y2 = 779.0;
Float Mode = 1.0;
void setup()
{
  size (200,800);
}

void draw()
{
  if (Mode == 1.0)
  background (155);
  fill (random (0,25));
  stroke (0);
  rect (x1, y1, 10,10);
  rect (x2, y2, 10, 10);
  
  // CONTROLS/MOVEMENT
  
  if (keyPressed == true&&key == 'd')
  {
    x1 = x1 + Movement;
    x2 = x2 + Movement;
  } 
  if (keyPressed == true&&key == 'a')
  {
    x1 = x1 - Movement;
    x2 = x2 - Movement;
  }
   if (keyPressed == true&&key == 's')
  {
    y1 = y1 + Movement;
    y2 = y2 + Movement;
  }
  
  //JUMPING 
     if (keyPressed == true&&key == 'w')
  {
    y1 = y1 - Movement;
    y2 = y2 - Movement;
  }
  else 
  {
    y1 = y1 + 2;
    y2 = y2 + 2;
  }
 

  //OBSTACLES
  //walls
  if (x1 >= 85)
  {
    x1 = 84.0;
  }
  if (x1 <= 10)
  {
    x1 = 11.0;
  }
  if (y1 >= 780)
  {
    y1 = 779.0;
  }
  if (y1 <=10)
  {
    y1 = 11.0;
  }
  }