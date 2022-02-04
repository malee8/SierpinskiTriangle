int j=450;
public void setup(){
  size(500,500);
  background(0);
}
public void draw(){
  sierpinski(50,450,450);
}
public void mouseClicked(){
  if(j>10){
    j=j/2;
  }
  else{
    j=450;
  }
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  background((int)(Math.random()*255));
}
public void sierpinski(int x, int y, int len){
  if(len<=j){
    triangle(x,y,x+len/2,y-len,x+len,y);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
