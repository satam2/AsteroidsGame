class Asteroid extends Floater{
  private double rotSpeed;
  Asteroid(){
    rotSpeed = (double)(Math.random()*4)-2;
    corners = 0;
    xCorners = new int[] {0}; 
    yCorners = new int[] {0};
    myColor = 0;
    myCenterX = 0;
    myCenterY = 0;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
