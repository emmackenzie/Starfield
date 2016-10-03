
NormalParticle[] particle;

void setup()
{
	size(500,500);

	particle = new NormalParticle[100];
		for(int i = 0; i < particle.length; i++)
		{
			//bob[0] = new OddballParticle();
			particle[i] = new NormalParticle();
		}
	particle[99] = new OddballParticle();
	
}
void draw()
{
	background(255);

	for(int i = 0; i < particle.length; i++)
	{
		particle[i].move();
		particle[i].show();
	}
}



class NormalParticle implements Particle
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
	float myX,myY;
	int myColor;

	OddballParticle()
	{
		myX = (float)(Math.random()*500);
		myY = (float)(Math.random()*500);
		myColor = color(0,0,255);
	}

	public void show()
	{
		fill(myColor);
		rect(10,10,10,10);
	}

	public void move()
	{
		myX = myX++;
	}
}

class JumboParticle //uses inheritance
{
	//your code here
}

void mousePressed()
{
	
}