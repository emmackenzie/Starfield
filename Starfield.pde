
Particle[] particle;

void setup()
{
	size(500,500);
frameRate = 3;
	 particle = new Particle[200];
		for(int i = 0; i < particle.length; i++)
		{
			particle[i] = new NormalParticle();
		}
	particle[0] = new OddballParticle();
	particle[1] = new JumboParticle();
	particle[2] = new JumboParticle();
	particle[3] = new JumboParticle();
	particle[4] = new JumboParticle();
	particle[5] = new OddballParticle();
	particle[6] = new OddballParticle();

	
}

void draw()
{
	background(0);
	
	for(int i = 0; i < particle.length; i++)
	{
		particle[i].move();
		particle[i].show();
	}
	
}



class NormalParticle implements Particle
{
	double myX, myY, speed, angle;
	int myColor, newColor;

	NormalParticle()
	{
		myX = 250;
		myY = 250;
		speed = (double)(Math.random()*10);
		angle = (double)(Math.random()* (2*Math.PI));
		myColor = color((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
		//newColor = color(myColor, myColor, myColor);
	}

	public void move()
	{
		myX = myX + Math.cos(angle) * speed;
		myY = myY + Math.sin(angle) * speed;


		/*if (myColor == 0)
			newColor = fill((float)(Math.random()*255), 0, 0);
		if (myColor == 1)
			newColor = fill(0, (float)(Math.random()*255), 0);
		if (myColor == 2)
			newColor = fill(0, 0, (float)(Math.random()*255));*/


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
	double r, myX, myY, speed;
	int myColor;

	OddballParticle()
	{
		myX = 100;
		myY = (float)(Math.random()*500);
		myColor = color((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
	}

	public void show()
	{
	
		fill(myColor);
		rect((float)myX, (float)myY,10,10);
	}

	public void move()
	{
		myX +=5;
 		
 		if (myX >= 495){
 			myX = 0;
 			myY = (float)(Math.random()*500);
 		}
 		
	}
}

class JumboParticle extends NormalParticle
{
	void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,15,15);
	}
}

void mousePressed()
{
	
}