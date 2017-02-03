public void setup()
{
	size(600, 600);
}
public void draw()
{
	sierpinski(170, 300, 300);
}
public void mouseDragged()//optional
{
	sierpinski(200, 500, 100);
	
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 10){
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else{
		sierpinski(x, y, len/2);
		sierpinski(x+(len/2), y, len/2);
		sierpinski(x+(len/4), y-(len/2), len/2);
	}

}