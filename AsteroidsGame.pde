//your variable declarations here
Spaceship man = new Spaceship();
Star shine[] = new Star[800];
public void setup() 
{
  size(400,400);
  for(int i = 0; i < shine.length; i++){
    shine[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < shine.length; i++){
    shine[i].showStar();
  }
  man.show();
  man.move();
  
}

public void keyPressed(){
  if(key == 'w' && man.myXspeed >= -11  && man.myXspeed < 10){
    man.accelerate(.05);
   // System.out.println(man.myXspeed);
//    System.out.println(man.myYspeed);
  }
  if(key == 'a'){
    man.turn(-10);
  }
  if(key == 'd'){
    man.turn(10);
  }
  if(key == 's' && man.myXspeed <= 11 && man.myXspeed > -10){
    man.accelerate(-.05);
   // System.out.println(man.myXspeed);
  }
  if(key == 'h'){
    man.setSpeed(0, 0);
    man.setPos();
  }
}
