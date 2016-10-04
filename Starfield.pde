
Particle[] particle;

void setup()
{
	size(500,500);

	 particle = new Particle[100];
		for(int i = 0; i < particle.length; i++)
		{

			particle[i] = new NormalParticle();
		}
	//particle[1] = new JumboParticle();
	particle[0] = new OddballParticle();
	
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
		noStroke();
		ellipse((float)myX,(float)myY,5,5);
	}
}



interface Particle
{
	public void move();
	public void show();
}

class OddballParticle implements Particle //uses an interface
{
	double r, myX, myY, speed, angle;
	int myColor;

	OddballParticle()
	{
		myX = 250;
		myY = 250;
		r = 100;
		speed = (double)(Math.random()*10);
		angle = (double)(Math.random()* (2*Math.PI));
		myColor = color((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
	}

	public void show()
	{
	
		fill(myColor);
		rect((float)myX,(float) myY,10,10);
	}

	public void move()
	{
		//myX = a + r * sin(angle);
		//myY= b + r * cos(angle);

		myX = myX + Math.cos(angle) * speed;
		myY = myY + Math.sin(angle) * speed;
	}
}

class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		ellipse((float)myX,(float)myY,15,15);
	}
}

void mousePressed()
{
	
}