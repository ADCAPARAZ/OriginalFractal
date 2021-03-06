int x = 300;
int y = 300;
int siz = 580;

public void setup()
{
	size(600,600);
	rectMode(CENTER);
}

public void draw(){
	background(0);
	myFractal(x,y,siz);
}


public void mouseMoved(){
	if(mouseY>0){
		siz = siz + 5;
	}
	if(mouseY < 0){
		siz = siz - 5;
	}
}

public void myFractal(int x, int y, int siz)
{
		if(mousePressed){
		double d = Math.random();
		if(d < 0.33){
			fill(255,0,0);
		}
		if(d > 0.33 && d < 0.66){
			fill(0,255,0);
		}
		if(d > 0.66){
			fill(0,0,255);
		}
	}
	ellipse(x,y,siz,siz);
	if(siz > 20)
	{
		myFractal(x+siz/3,y,siz/2);
		myFractal(x-siz/3,y,siz/2);
	}
}