
NormalParticle[] bob;

void setup()
{
	size(500,500);
	/*bob = new NormalParticle[100];
		for(int i = 0; i < 500; i++)
		{
			bob[i] = new NormalParticle();
		}*/
}
void draw()
{
	
	for(int i = 0; i < bob.length; i++)
	{
	bob[i].move();
	bob[i].show();
	}
}



class NormalParticle
{
	double myX, myY, speed, angle;
	int myColor;

	NormalParticle()
	{
		myX = 250;
		myY = 250;
		speed = (double)(Math.random()*10);
		angle = (double)(Math.random()* (2*Math.PI));
		myColor = color(255,0,0);
	}

	void move()
	{
		myX = myX + Math.cos(angle) * speed;
		myY = myY + Math.sin(angle) * speed;
	}

	void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,10,10);
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

