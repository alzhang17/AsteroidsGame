class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[]{-4, 8, -4, -2};
      yCorners = new int[]{-4, 0, 4, 0};
      myCenterX = 200;
      myCenterY = 200;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
      myColor = color(255,255,255);
    }
    public void setSpeed(double x, double y){
      myXspeed = x;
      myYspeed = y;
    }
    public void setPos(){
      myCenterX = (int)(Math.random()*400);
      myCenterY = (int)(Math.random()*400);
      myPointDirection = (int)(Math.random()*361);
      //System.out.println(myCenterX);
      //System.out.println(myCenterY);
    }
}
