class Star
{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*500);
  }
  public void show(){
    fill(255);
    ellipse(myX, myY, 2, 2);
  }
}
