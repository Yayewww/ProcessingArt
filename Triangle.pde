class Triangle extends Ball {
  float T1_x = 400;
  float T1_y = 445;
  float T2_x = 428;
  float T2_y = 390;
  float T3_x = 456;
  float T3_y = 445;
  
    void display(){
  fill(RanRGB,RanRGB,RanRGB);
  triangle(T1_x,T1_y,T2_x,T2_y,T3_x,T3_y);
    T1_x+=speedX*10; 
    T2_x+=speedX*10; 
    T3_x+=speedX*10;  
    T1_y+=speedY*10; 
    T2_y+=speedY*10; 
    T3_y+=speedY*10; 
    RanRGB = random(0,255);
    if(T1_x>width || T2_x>width || T3_x>width)
    {
     T1_x = 400;
     T1_y = 445;
     T2_x = 428;
     T2_y = 390;
     T3_x = 456;
     T3_y = 445;
    }
     if(T1_x<0 || T2_x<0 || T3_x<0)
    {
     T1_x = 400;
     T1_y = 445;
     T2_x = 428;
     T2_y = 390;
     T3_x = 456;
     T3_y = 445;
    }
    if(T1_y>height || T2_y>height || T3_y>height)
    {
     T1_x = 400;
     T1_y = 445;
     T2_x = 428;
     T2_y = 390;
     T3_x = 456;
     T3_y = 445;
    }
    if(T1_y<0 || T2_y<0 || T3_y<0)
    {
     T1_x = 400;
     T1_y = 445;
     T2_x = 428;
     T2_y = 390;
     T3_x = 456;
     T3_y = 445;
    }
      }
  
}
