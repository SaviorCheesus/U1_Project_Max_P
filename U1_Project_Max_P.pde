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
  {
  Float Bground = (random (150,180));
  background (Bground);
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

  fill (random (200,250));
  stroke (0);
  strokeWeight(2);

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
  
  if (x1 >= 85)
  {
    x1 = 84.0;
  }
  if (x1 <= 9)
  {
    x1 = 11.0;
  }
  if (y1 >= 780)
  {
    y1 = 779.0;
  }
  if (y2 >=780)
  {
    y2 = 779.0;
  }
  if (x2 >= 180)
  {
    x2 = 179.0;
  }
  if (x2 <= 105)
  {
    x2 = 106.0;
  }
  rect (0, 790 ,200, 10);
  rect (0, 0, 10, 800);
  rect (95, 0, 10, 800);
  rect (190, 0, 10, 800);
  rect (0, 0, 200, 10);
 
  //Platforms 1
  rect (0,750,50,10);
  rect (95,750,50,10);
  if (y1 >= 755 && y1 <= 760 && x1 <= 50 )
  {
   y1 = 761.0; 
  }
  if (y1 >= 742 && y1 <= 760 && x1 <= 50 && x1 >=45)
  {
  x1 = 51.0;
  } 
   if (y1 >= 740 && y1 <= 760 && x1 <= 50 )
  {
   y1 = 739.0; 
  }
  
   if (y2 >= 755 && y2 <= 760 && x2 <=145)
  {
   y2 = 761.0; 
  }
  if (y2 <= 731 && y2 >= 759 && x2 <=155)
  {
  x2 = 156.0;
  } 
   if (y2 >= 740 && y2 <= 760 && x2 <= 145)
  {
   y2 = 739.0; 
  }
  
  //Platforms 2
  rect (55,700,50,10);
  rect (150,700,50,10);
  if (y1 >= 700 && y1 <= 710 && x1 >= 55)
  {
   y1 = 711.0; 
  }
  if (y1 >= 698 && y1 <= 708 && x1 >= 45)
  {
  x1 = 44.0;
  } 
   if (y1 >= 691 && y1 <= 700 && x1 >= 45 )
  {
   y1 = 690.0; 
  }
  
   if (y2 >= 700 && y2 <= 710 && x2 >= 145)
  {
   y2 = 711.0; 
  }
  if (y2 >= 697 && y2 <= 706 && x2 >= 140)
  {
  x2 = 139.0;
  } 
   if (y2 >= 691 && y2 <= 700 && x2 >= 145 )
  {
   y2 = 690.0; 
  }
  }
}