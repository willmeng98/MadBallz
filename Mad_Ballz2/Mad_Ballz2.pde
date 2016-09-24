
//Changeable Variables
int screenheight = 600;
int screenwidth = 600;
int ball_diameter = 50;
int paddleheight = 20 ;
int paddlewidth = 120;
int rectx = 60;
int minus = 0;
int life = 5;
float highscore = 0;
int debug = 0;
int red = 0;



//Program Variables
float x = 100;
float y = 100;
float xspeed = random(-20,20);
float yspeed = random(-20,20);
int time = 1;
float score = 0;

//Screen Control
int screen = 1;
int problems = 20;
int works = 20;
int smth = 1;


//Images

PImage d;
PImage d2;
PImage l;
PImage l1;
PImage l2;
PImage l3;
PImage l4;
PImage l5;
PImage l6;
PImage l7;
PImage l8;
PImage l9;
PImage l10;
PImage r;
PImage r1;
PImage r2;
PImage r3;
PImage r4;
PImage r5;
PImage r6;
PImage r7;
PImage r8;
PImage r9;
PImage r10;
PImage mad;
PImage play;
PImage menu;


void setup()
{
  size(600,600);
  
  //Image Uploads
  d = loadImage("final2.png");
  d2 = loadImage("final4.png");
  l = loadImage("left leaf.jpg");
  l1 = loadImage("left leaf - 1.jpg");
  l2 = loadImage("left leaf - 2.jpg");
  l3 = loadImage("left leaf - 3.jpg");
  l4 = loadImage("left leaf - 4.jpg");
  l5 = loadImage("left leaf - 5.jpg");
  l6 = loadImage("left leaf - 6.jpg");
  l7 = loadImage("left leaf - 7.jpg");
  l8 = loadImage("left leaf - 8.jpg");
  l9 = loadImage("left leaf - 9.jpg");
  l10 = loadImage("left leaf - 10.jpg");
  r = loadImage("right leaf.jpg");
  r1 = loadImage("right leaf - 1.jpg");
  r2 = loadImage("right leaf - 2.jpg");
  r3 = loadImage("right leaf - 3.jpg");
  r4 = loadImage("right leaf - 4.jpg");
  r5 = loadImage("right leaf - 5.jpg");
  r6 = loadImage("right leaf - 6.jpg");
  r7 = loadImage("right leaf - 7.jpg");
  r8 = loadImage("right leaf - 8.jpg");
  r9 = loadImage("right leaf - 9.jpg");
  r10 = loadImage("right leaf - 10.jpg");
  mad = loadImage("Mad2.png");
  play = loadImage("Play.png");
  menu = loadImage("return.png");
}

void draw()
{
  if(screen == 1)
  {
    debug = debug + 1;
    works = works + 1;
    problems = problems + smth;
 //   println(problems);
    background(0);   
    image(l, 0, 0);
    image(r, 475, 0);
    image(d, 100, 120);
    image(mad,83,90);
    if((problems > 40) && (problems < 60))
    {
    image(r1, 475, 0);
    image(l1, 0, 0);
    image(d, 100, 120);
    image(mad,83,90);
    }
        if((problems > 59) && (problems < 80))
    {
    image(r2, 475, 0);
    image(l2, 0, 0);
    image(d, 100, 120);
    image(mad,83,90);
    }
        if((problems > 79) && (problems < 100))
    {
    image(r3, 475, 0);
    image(l3, 0, 0);
    image(d, 100, 120);
    image(mad,83,90);
    }
        if((problems > 99) && (problems < 120))
    {
    image(r4, 475, 0);
    image(l4, 0, 0);
    image(d, 100, 120);
    image(mad,83,90);
    }
        if((problems > 119) && (problems < 140))
    {
    image(r5, 475, 0);
    image(l5, 0, 0);
    image(d, 100, 120);
    image(mad,83,90);
    }
        if((problems > 139) && (problems < 160))
    {
    image(r6, 475, 0);
    image(l6, 0, 0);
    image(d, 100, 120);
    image(mad,83,90);
    }
        if((problems > 159) && (problems < 180))
    {
    image(r7, 475, 0);
    image(l7, 0, 0);
    image(d, 100, 120);
    image(mad,83,90);
    }
        if((problems > 179) && (problems < 200))
    {
    image(r8, 475, 0);
    image(l8, 0, 0);
    image(d, 100, 120);
    image(mad,83,90);
    }
        if((problems > 199) && (problems < 220))
    {
    image(r9, 475, 0);
    image(l9, 0, 0);
    image(d, 100, 120);
    image(mad,83,90);
    }
        if((problems > 219) && (problems < 240))
    {
    image(r10, 475, 0);
    image(l10, 0, 0);
    image(d2, 100, 120);
    image(mad,83,90);

    }
    if(problems > 230)
    {
      smth = - 1;
    }
    if(problems < 21)
    {
      smth = 1;
    }
    fill(255);
    rect(150,350,250,100);
    image(play,-360,265);
    if((mouseX>150)&&(mouseX<400)&&(mouseY>350)&&(mouseY<450)&&(mousePressed == true)&&(debug > 45))
    {
      screen = 2;
    }
    
    textSize(40);
    String s = "Current Highscore:";
fill(0,120,150);
text(s, 50, 500, 500, 80);
text(highscore,450,540);
    
    
  }
  if(screen == 2)
  {
    red--;
  score = score + 0.016667;
  float timeA = time % 150;
  time = time + 1;
  x = x + xspeed;
  y = y + yspeed;
  if((x > screenwidth-(ball_diameter/2)))
  {
    x = screenwidth-(ball_diameter/2);
    xspeed = xspeed * (-1);
  }
    if((x < ball_diameter/2))
  {
    x = ball_diameter/2;
    xspeed = xspeed * (-1);
  }
    if((y > screenheight-(ball_diameter/2)))
  {
    y = screenwidth-(ball_diameter/2);
    yspeed = yspeed * (-1);
  }
      if((y < ball_diameter/2))
  {
    y = ball_diameter/2;
    yspeed = yspeed * (-1);
  }
  
//  if((timeA) == 0)
//  {
//     xspeed = random(-20,20);
// yspeed = random(-20,20);
// 
//  }

random_number();  
 // println(xspeed + "   " + yspeed);
 
if(rectx > 500)
{
rectx = 500;
}

if(rectx < 150)
{
  rectx = 150;
}
if((rectx>=150)&&(rectx<=500))
{
rectx = mouseX - (paddlewidth/2);
}

 background(0,150,200);
 fill(50);
 rect(0,520,600,100);
 fill(150);
 rect(0,520,600,20);
 fill(250,50 ,50 );
 rect(0,590,600,10);
fill(red,250,250);
ellipse(x,y,50,50);
fill(50,0,200);
rect(rectx, 520,120,20);
fill(50,70,200);
rect(rectx,540,120,50);

if((y>500)&&(x<mouseX+60)&&(x>mouseX-60))
{
  y = 499;
  yspeed = -abs(yspeed);

}

if(minus == 0)
{
if(y > 500)
{
  minus = 1;
  red = 250;
}
}
if(minus == 1)
{
  life = life - 1;
  minus = 2;
}
if((minus == 2)&&(y< 500))
{
  minus = 0;
}
fill(0);
textSize(20);
text(score,20,20);
text(life, 100,20);
println(rectx);
if(life == 0)
{
  screen = 3;
}

  }
  
  if(screen ==3)
  {
    background(0);
    textSize(30);
    fill(200,50,50);
    String t = "Final Score:";
    text(t,150,250);
    text(score,350,250);
    image(menu,50,350);
    if(score > highscore)
    {
      highscore = score;
    }
    if((mouseX>50)&&(mouseX<550)&&(mouseY>350)&&(mouseY<446)&&(mousePressed == true))
    {
      screen = 1;
      x = 100;
      y = 100;
      score = 0;
      println("dfgdfgsdf");
      life = 5;
      debug = 0;
    }
  }

  
  
}

void random_number()
{
    float timeA = time % 150;
  time = time + 1;
   if((timeA) == 0)
  {
     xspeed = random(-20,20);
 yspeed = random(-20,20);
 
 if(abs(yspeed)<2.5)
 {
   ychange();
   println("IN");
 }
 
  }
}

void ychange()
{
  yspeed = random(-20,20);
}