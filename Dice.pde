

void setup()
{
	noLoop();
	size(600,700);
	
}
void draw()
{
	background(0);
	for (int i = 25; i < 550; i+=70){
		for(int j = 25; j < 550; j+=70){
			Die one = new Die (i,j);
			one.roll();
			one.show();
		}	
	}

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int siz, myx, myy, dx, dy, num;
	
	Die(int x, int y) //constructor
	{
		//col(255,150,150);
		siz = 10;
		myx = x;
		myy = y;
		dx = x + 27;
		dy= y + 27;


	}
	void roll()
	{
		num = (int)(Math.random()*6) +1;
	}
	void show()
	{	
		int randCol = (int)(Math.random()*2);
		if (randCol==0){
			fill(255,180,180);
		} else {
			fill(255,140,140);
		}
		
		rect(myx, myy, 55, 55, 7);
		
		fill(255,215,200);
		if (num == 1){
			ellipse(dx, dy, 10, 10);
		} else if (num==2){
			ellipse(dx-10, dy+10, 10, 10);
			ellipse(dx+10, dy-10, 10, 10);
		} else if (num==3){
			ellipse(dx-10, dy+10, 10, 10);
			ellipse(dx, dy, 10, 10);
			ellipse(dx+10, dy-10, 10, 10);
		} else if (num==4){
			ellipse(dx+10, dy+10, 10, 10);
			ellipse(dx-10, dy-10, 10, 10);
			ellipse(dx-10, dy+10, 10, 10);
			ellipse(dx+10, dy-10, 10, 10);
		} else if (num==5){
			ellipse(dx, dy, 10, 10);
			ellipse(dx+10, dy+10, 10, 10);
			ellipse(dx-10, dy-10, 10, 10);
			ellipse(dx-10, dy+10, 10, 10);
			ellipse(dx+10, dy-10, 10, 10);
		} else { //6
			ellipse(dx, dy+10, 10, 10);
			ellipse(dx, dy-10, 10, 10);
			ellipse(dx+10, dy+10, 10, 10);
			ellipse(dx-10, dy-10, 10, 10);
			ellipse(dx-10, dy+10, 10, 10);
			ellipse(dx+10, dy-10, 10, 10);
		} 
	}
}
