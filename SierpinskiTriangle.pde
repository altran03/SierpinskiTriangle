int wide = 500;
int high = 500;
int start = 0;
public void setup()
{
size(500,500);

}
public void draw()
{
  background(255,255,255);
  sierpinski(start,wide,high);
}
public void mouseClicked()//optional
{
fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
wide = (int)(width*Math.random());
high = (int)(height*Math.random());
start = 500-wide;
}
public void sierpinski(int x, int y, int len) 
{
if (len<=20){
  triangle(x,y,x + len, y, x+(len/2), y-len);
} else {
  sierpinski(x,y, (len/2));
  sierpinski(x+(len/2),y,(len/2));
  sierpinski(x+(len/4),y-(len/2),(len/2));
}
}
