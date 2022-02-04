int i=1;
public void setup(){
  size(500,500);
  background(0);
}
public void draw(){
  sierpinski(50,450,450);
}
public void mouseClicked(){
  i=-i;
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  background((int)(Math.random()*255));
}
public void sierpinski(int x, int y, int len){
  if(len<=20){
    triangle(x,y,x+i*len/2,y-i*len,x+i*len,y);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
