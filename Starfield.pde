
Particle[] particle;

void setup()
{
	size(500,500);
frameRate = 3;
	 particle = new Particle[100];
		for(int i = 0; i < 80; i++)
		{
			particle[i] = new NormalParticle();
		}
	particle[0] = new OddballParticle();
	//particle[1] = new OddballParticle();
	particle[1] = new JumboParticle();
	
}

void draw()
{
	background(0);
	
	for(int i = 0; i < 80; i++)
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
	int direction;

	OddballParticle()
	{
		myX = 250;
		myY = 250;
		direction = 0;
		myColor = color((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
	}

	public void show()
	{
	
		fill(myColor);
		rect((float)myX,(float) myY,10,10);
	}

	public void move()
	{
		myX = myX += 1; // (int)(Math.random()*9)-4;
 		//myY = myY ++; // (int)(Math.random()*9)-4;

 		if (direction == 0)
 			myX = myX ++;
 		if (direction == 1)
 			myX = myX --;

 		if (myX < 5)
 			direction = 0;
 		if(myX >= 495)
 			direction = 1;

 	
	}
}

class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		fill(255);
		ellipse((float)myX,(float)myY,50,50);
	}
}

void mousePressed()
{
	
}