Die one;
void setup()
{
	noLoop();
	size(600,600);
	one = new Die (100,100);
}
void draw()
{
	background(0);
	one.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int siz, myx, myy;
	
	Die(int x, int y) //constructor
	{
		//col(255,150,150);
		siz = 10;
		myx = x;
		myy = y;


	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255,150,150);
		rect(myx, myy, 55, 55, 7);
		int num = (int)(Math.random()*6) +1;
		fill(50);
		if (num == 1){
			ellipse(myx, myy, 10, 10);
		} else if (num==2){
			ellipse(myx-10, myy+10, 10, 10);
			ellipse(myx+10, myy-10, 10, 10);
		} else if (num==3){
			ellipse(myx-10, myy+10, 10, 10);
			ellipse(myx, myy, 10, 10);
			ellipse(myx+10, myy-10, 10, 10);
		} else if (num==4){
			ellipse(myx+10, myy+10, 10, 10);
			ellipse(myx-10, myy-10, 10, 10);
			ellipse(myx-10, myy+10, 10, 10);
			ellipse(myx+10, myy-10, 10, 10);
		} else if (num==5){
			ellipse(myx, myy, 10, 10);
			ellipse(myx+10, myy+10, 10, 10);
			ellipse(myx-10, myy-10, 10, 10);
			ellipse(myx-10, myy+10, 10, 10);
			ellipse(myx+10, myy-10, 10, 10);
		} else {
			ellipse(myx-10, myy+10, 10, 10);
			ellipse(myx+10, myy-10, 10, 10);
		} 
	}
}
