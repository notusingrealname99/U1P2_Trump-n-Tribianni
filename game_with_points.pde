float x=400;
float y =400;
int score=1;
PImage joey;
int speed=3;
PImage TrumptyDumpty;

void setup()
{
  joey = loadImage("joey.jpg");
  size(800, 800);

  TrumptyDumpty = loadImage("TrumptyDumpty.jpg");
  TrumptyDumpty.resize(128, 128);
}
void draw()
{
  background(0);

  ellipse(x, y, 25, 25);
  image(joey, x, y);

  x=x+speed;




  if (x >800)
  {
    String s = "U deserve to be in 1rst grade";
    fill(255);
    textSize(100);
    text(s, 100, 100, 100, 100);  // Text wraps within text box
    text(score, 100, 100);
  }






  rect(mouseX, mouseY, 20, 20);
  image(TrumptyDumpty, mouseX, mouseY);
  //Distance
  float distance = dist(mouseX, mouseY, x, y);
  if (distance<12.5)
  {

    background(255, 0, 0);

    x=(int)random(0, 400);
    y=(int)random(0, 800);




    score=score+1;
    speed=speed+1;
  }
}

void mouseReleased()
{
  float distance = dist(mouseX, mouseY, x, y);
  if (distance<12.5)
  {

    background(255, 0, 0);

    x=(int)random(0, 400);
    y=(int)random(0, 800);

    score=score+1;
  }
}
