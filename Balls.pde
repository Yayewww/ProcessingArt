class Ball {
  float RanRGB = random(0,255);
  float x = random(0,800);
  float y = random(0,800);
  float r = 25;
  float speedX = random(-5,15);
  float speedY = random(-5,15);
  float B = random(0,255);
  float G = random(0,255);
  float R = random(0,255);
  float bang = random(0.8,1.2);
  float b_Ball = random(0.4,2);
  
  void change(){
    speedX = random(-5,5);
    speedY = random(-5,5);
    R = random(0,255);
    G = random(0,255);
    B = random(0,255);
    bang = random(.8,4);
    b_Ball = random(0.4,3);    
  }
  
  void display(){
  fill(R,G,B);
  ellipse(x,y,r*b_Ball,r*b_Ball);
     x+=speedX;
    y+=speedY;
    if(x>width+r)
    {
    x=0-r;
    }
     if(x<0-r)
    {
    x=width+r;
    }
    if(y>height+r)
    {
    y=0-r;
    }
    if(y<0-r)
    {
    y=height+r;
    }
    }
  }
