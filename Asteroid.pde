class Asteroid extends Floater{
  private double rotSpeed;
  Asteroid(){
    rotSpeed = (Math.random()*8)-4;
    corners = 7; 
    xCorners = new int[]{-6,-1,1,5,6,-2,-7}; 
    yCorners = new int[]{6,4,5,2,-8,-7,-1};
    myColor = color(149,139,132);
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myXspeed = (Math.random()*4)-2;
    myYspeed = (Math.random()*4)-2;
    myPointDirection = (Math.random()*360);
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public double getX(){
     return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
