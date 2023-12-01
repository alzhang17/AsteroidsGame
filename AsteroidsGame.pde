//your variable declarations here
Spaceship man = new Spaceship();
Star shine[] = new Star[800];
ArrayList <Asteroid> kind = new ArrayList <Asteroid>();;

public void setup() 
{
  size(400,400);
  for(int i = 0; i < shine.length; i++){
    shine[i] = new Star();
  }
  for(int i = 0; i < 5; i++){
    kind.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  man.show();
  man.move();
  for(int i = 0; i < shine.length; i++){
    shine[i].showStar();
  }
  for(int i = 0; i < kind.size(); i++){
    kind.get(i).show();
    kind.get(i).move();
    float d = dist((float)man.myCenterX, (float)man.myCenterY, (float)kind.get(i).myCenterX, (float)kind.get(i).myCenterY);
    if(d < 10)
      kind.remove(i);
  }
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
