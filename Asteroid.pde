class Asteroid extends Floater{
  private double rotSpeed;
  Asteroid(){
    rotSpeed = (double)(Math.random()*8)-4;
    corners = 7;
    xCorners = new int[]{-6,-1,1,5,6,-2,-7}; 
    yCorners = new int[]{6,4,5,2,-8,-7,-1};
    myColor = color(149,139,132);
    myCenterX = (float)(Math.random()*500);
    myCenterY = (float)(Math.random()*500);
    myXspeed = (float)(Math.random()*4)-2;
    myYspeed = (float)(Math.random()*4)-2;
    myPointDirection = (float)(Math.random()*360);
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getX(){
     return (float) myCenterX;
  }
  public float getY(){
    return (float) myCenterY;
  }
}
