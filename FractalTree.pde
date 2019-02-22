private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380, 10*fractionLength, branchAngle);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle + branchAngle;
	double angle2 = -angle - branchAngle;
	int endX1 = (int)(branchLength*Math.cos(angle1)+x);
	int endY1 = (int)(branchLength*Math.sin(angle1)+y);
	int endX2 = (int)(branchLength*Math.cos(angle2)-x);
	int endY2 = (int)(branchLength*Math.sin(angle2)+y);
	if(branchLength < smallestBranch)
		line(x, y, (float)branchLength+(float)Math.cos(angle)+x, (float)branchLength-(float)Math.sin(angle)+y);
	else{
		line(x, y, (float)branchLength*(float)Math.cos(angle)+x, (float)branchLength*(float)Math.sin(angle)+y);
		drawBranches((int)branchLength*(int)Math.cos(angle)+x, (int)branchLength*(int)Math.sin(angle)+y, (int)branchLength*fractionLength, (int)2*angle);
	}    
} 
