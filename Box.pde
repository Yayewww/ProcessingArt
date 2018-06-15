class Box extends Ball {

  
  void display(){
  fill(R,G,B);
  rect(x,y,r*bang,r*bang);
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
