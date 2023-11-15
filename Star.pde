class Star //note that this class does NOT extend Floater
{
  private int starWidth, starHeight, starXpos, starYpos, starColor;
  public Star(){
    starWidth = 3;
    starHeight = 3;
    starXpos = (int)(Math.random()*700)-300;
    starYpos = (int)(Math.random()*700)-300;
    starColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void showStar(){
    fill(starColor);
    noStroke();
    ellipse(starXpos, starYpos, starWidth, starHeight);
  }
}
