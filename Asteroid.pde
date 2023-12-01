class Asteroid extends Floater{
  private int speedOfTurn;
  private int negative[];
  private double randomSpeed;
  public Asteroid(){
    corners = 19;
    xCorners = new int[]{-6, -6, -4, -4, -2, 0, 2, 4, 6, 6, 6, 6, 4, 4, 2, 0, -2, -4, -4};
    yCorners = new int[]{-0, -2, -4, -6, -8, -8, -8, -6, -4, -2, 0, 2, 4, 6, 8, 8, 6, 4, 2};
    myColor = color(255,255,255);
    negative = new int []{-1, 1};
    randomSpeed = negative[(int)(Math.random()*negative.length)];
    System.out.println(randomSpeed);
    myCenterX = (int)(Math.random()*700)-300;
    myCenterY = (int)(Math.random()*700)-300;
    myXspeed = (int)(Math.random()*3)-1*randomSpeed;
    myYspeed = (int)(Math.random()*3)-1*randomSpeed;
    myPointDirection = (int)(Math.random()*360);
    speedOfTurn = (int)(Math.random()*21)-10;
  }
  
  public void move(){
   turn(speedOfTurn);
   super.move();
}
}
