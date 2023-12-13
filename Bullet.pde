class Bullet extends Floater{
  Bullet(Spaceship ship){
    myCenterX = ship.getCenterX();
    myCenterY = ship.getCenterY();
    myPointDirection = ship.getPointDirection();
    accelerate(6);
  }
  
  public void show(){
    fill(255);
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  
  public void move(){
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
