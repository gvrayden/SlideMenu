float mx,my;
boolean dragged = false;
float menux,menuy;
float leftx,rightx;
void setup()
{
  size(100,100);
  menux = 0;
  leftx = 2;
  rightx = 2;
}

void draw()
{
  smooth();
  background(0);
  drawMenu1();
  drawMenu2();
}

void mousePressed()
{
  mx = mouseX;
}

void mouseDragged()
{
  dragged = true;
  if(dragged)
   {
     float mx1 = mx;
     mx = mouseX;
     dragged = true;
     moveMenu(mx1,mx);
   }
}

void mouseReleased()
{
  if(dragged)
  {
    endx = mouseX;
    endy = mouseY;
    dragged = false;
  }
}

void moveMenu(float x1, float x2)
{
  if(menux==-102)
    menux = -100;
  if(menux==2)
    menux = 0;
  if(dragged && menux>=-100 && menux<=0)
  {
    if(x1 < x2)
      menux += 2;
    else
      menux -= 2;
  }
}

void drawMenu1()
{
  pushStyle();
  fill(255);
  textSize(24);
  text("Hello",menux,20);
  popStyle();
  pushStyle();
  fill(255);
  textSize(14);
  text("Hello 1",menux,40);
  popStyle();
  pushStyle();
  fill(255);
  textSize(14);
  text("Hello 2",menux,60);
  popStyle();
}

void drawMenu2()
{
  pushStyle();
  fill(255);
  textSize(24);
  text("World",menux+100,20);
  popStyle();
  pushStyle();
  fill(255);
  textSize(14);
  text("world 1",menux+100,40);
  popStyle();
  pushStyle();
  fill(255);
  textSize(14);
  text("world 2",menux+100,60);
  popStyle();
}
