import gifAnimation.*;

GifMaker gifExport;
int frames = 0;
int totalFrames = 300;//gif's totalframes

Ball a = new Ball();
Ball b = new Ball();
Box c = new Box();
Box d = new Box();
Ball e = new Ball();
Ball f = new Ball();
Box g = new Box();
Box h = new Box();
Ball i = new Ball();
Ball j = new Ball();
Box k = new Box();
Box l = new Box();
Ball m = new Ball();
Ball n = new Ball();
Ball o = new Ball();
Ball p = new Ball();
Ball q = new Ball();
Ball r = new Ball();
Ball s = new Ball();
Ball t = new Ball();
Ball u = new Ball();
Ball v = new Ball();
Ball w = new Ball();
Ball x = new Ball();
Ball y = new Ball();
Ball z = new Ball();
Triangle T_T = new Triangle();

Ball [] ff = {a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,T_T};
boolean isMagicDone = false;

void setup(){
  frameRate(30);

  size(800,800);
  noStroke();
   gifExport = new GifMaker(this, "export.gif", 10);//(this, "name.gif", export rate(int) )
  gifExport.setRepeat(0); // make it an "endless" animation

}

void draw(){
    fill(255);
  rect(0,0,width,height);
for (int i = 0; i < ff.length;i++){
    ff[i].display();
  }
  int s = second();
  if (s%2==1)
  {
    if (isMagicDone == false) {
      isMagicDone = true;
      magic();
    }  
  }
      if(s%2<1)
  {
  isMagicDone = false;
  }

 //saveFrame("CooYa-######.png");
 export();

}

void magic(){
  for (int i = 0; i < ff.length;i++){
    ff[i].change();
  }
}

void export() {
  if(frames < totalFrames) {
    gifExport.setDelay(20);
    gifExport.addFrame();
    frames++;
  } else {
    gifExport.finish();
    frames++;
    println("gif saved");
    exit();
  }
}
