
NormalParticle[] bob;

void setup()
{
	size(500,500);

	bob = new NormalParticle[100];
		for(int i = 0; i < bob.length; i++)
		{
			bob[i] = new NormalParticle();
		}
}
void draw()
{
	background(255);

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
		myColor = color((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
	}

	public void move()
	{
		myX = myX + Math.cos(angle) * speed;
		myY = myY + Math.sin(angle) * speed;

		if (mousePressed)
		{
		myX = mouseX;
		myY = mouseY;
		speed = (double)(Math.random()*10);
		angle = (double)(Math.random()* (2*Math.PI));
		myColor = color((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
		}
	}

	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,10,10);
	}
}



interface Particle
{
	public void show();
	public void move();
}

class OddballParticle implements Particle //uses an interface
{
	public void show()
	{

	}

	public void move()
	{

	}
}

class JumboParticle //uses inheritance
{
	//your code here
}

void mousePressed()
{
	
}