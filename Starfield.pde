//your code here
void setup()
{
	size(500,500);
}
void draw()
{
	//your code here
}



class NormalParticle
{
	float myX, myY, speed, angle;
	int myColor;

	NormalPartical(int x, int y)
	{
		myX = 150;
		myY = 150;
		speed = (Math.random()*10);
		angle = (Math.random()* 180);
		myColor = color(255,0,0);
	}

	void move()
	{

	}

	void show()
	{

	}
}








interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

