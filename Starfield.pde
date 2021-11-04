Particle[] bob = new Particle[500];
void setup(){
  size(400,400);
  for(int i = 0; i < 10; i++)
    bob[i] = new OddballParticle();
  for(int i = 10; i < bob.length; i++)
    bob[i] = new Particle();
}
void draw(){
  background(42,65,88);
  fill(0);
  ellipse(200,180,90,100);
  fill(42,65,88);
  ellipse(200,180,85,95);
  fill(232,170,77);
  ellipse(225,200,60,70);
  ellipse(200,200,60,75);
  ellipse(175,200,60,70);
  fill(209,130,51);
  ellipse(200,177,76,15);
  fill(0);
  triangle(167,205,183,205,175,191);
  triangle(217,205,233,205,225,191);
  triangle(195,210,205,210,200,203);
  for(int i = 0; i < bob.length; i++){
    bob[i].move();
    bob[i].show();
  }
}

class Particle{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle(){
    myX = 200;
    myY = 203;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = (Math.random()*7)+1;
    myColor = color((int)(Math.random()*20)+235, (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void move(){
    myX+= Math.cos(myAngle)*mySpeed;
    myY+= Math.sin(myAngle)*mySpeed;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 12.0, 10.0);
    triangle((float)myX-4, (float)myY, (float)myX-12, (float)myY+5, (float)myX-12, (float)myY-5);
    triangle((float)myX+4, (float)myY, (float)myX+12, (float)myY+5, (float)myX+12, (float)myY-5);
  }
}
class OddballParticle extends Particle{
  OddballParticle(){
    myX = 200;
    myY = 203;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = (Math.random()*7)+1;
    myColor = color(176, (int)(Math.random()*32)+200, (int)(Math.random()*42)+190);
  }
  void show(){
    fill(myColor);
    rect((float)myX-1, (float)myY, 2, 10);
    ellipse((float)myX, (float)myY-8, 12.0, 12.0);
    triangle((float)myX-4, (float)myY, (float)myX, (float)myY-4, (float)myX+4, (float)myY);
  }
}
