class Spaceship extends Floater  
{   
    public Spaceship(){
    corners = 6;
    xCorners = new int[]{9,2,-4,-6,-4,2};
    yCorners = new int[]{0,-2,5,0,-5,2};
    myColor = color(255);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int)myCenterX;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {
    myXspeed = x;
  }
  public double getDirectionX() {
    return myXspeed;
  }
  public void setDirectionY(double y) {
    myYspeed = y;
  }
  public double getDirectionY() {
    return myYspeed;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
