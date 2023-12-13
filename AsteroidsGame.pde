//your variable declarations here
Spaceship man = new Spaceship();
Star shine[] = new Star[800];
ArrayList <Asteroid> kind = new ArrayList <Asteroid>();
ArrayList <Bullet> shot = new ArrayList <Bullet>();

int bulletCoolDown;


public void setup() 
{
  size(400, 400);
  for (int i = 0; i < shine.length; i++) {
    shine[i] = new Star();
  }
  for (int i = 0; i < 5; i++) {
    kind.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);

  for (int i = 0; i < shine.length; i++) {
    shine[i].showStar();
  }
  for (int i = 0; i < kind.size(); i++) {
    kind.get(i).show();
    kind.get(i).move();
    float d = dist((float)man.myCenterX, (float)man.myCenterY, (float)kind.get(i).myCenterX, (float)kind.get(i).myCenterY);
    if (d < 10) {
      kind.remove(i);
    }
  }
  for (int i = 0; i < shot.size(); i++) {
    if (shot.get(i).getX() > 395 || shot.get(i).getX() <  0 || shot.get(i).getY() > 395 || shot.get(i).getY() < 0) {
      shot.remove(i);
    } else {
      shot.get(i).show();
      shot.get(i).move();
      for (int j = 0; j < kind.size(); j++) {
        float d = dist((float)shot.get(i).getX(), (float)shot.get(i).getY(), (float)kind.get(j).myCenterX, (float)kind.get(j).myCenterY);
        if (d < 10) {
          shot.remove(i);
          kind.remove(j);
          break;
        }
      }
    }
  }

  if (bulletCoolDown != 0)
    bulletCoolDown--;

  man.show();
  man.move();
}

public void keyPressed() {
  if (key == 'w' && man.myXspeed >= -11  && man.myXspeed < 10) {
    man.accelerate(.05);
    // System.out.println(man.myXspeed);
    //    System.out.println(man.myYspeed);
  }
  if (key == 'a') {
    man.turn(-10);
  }
  if (key == 'd') {
    man.turn(10);
  }
  if (key == 's' && man.myXspeed <= 11 && man.myXspeed > -10) {
    man.accelerate(-.05);
    // System.out.println(man.myXspeed);
  }
  if (key == 'h') {
    man.setSpeed(0, 0);
    man.setPos();
  }
  if (key == 'p' && bulletCoolDown == 0) {
    shot.add(new Bullet(man));
    bulletCoolDown = 24;
  }
}
