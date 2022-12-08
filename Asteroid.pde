class Asteroid extends Floater{
  private double rotSpeed;
  Asteroid(){
    rotSpeed = (Math.random()*8)-4;
    corners = 7; 
    xCorners = new int[]{-9,-2,2,8,9,-3,-11}; 
    yCorners = new int[]{-9,-6,-8,-3,12,11,2,-9};
    myColor = color(183,135,113);
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
  
  protected void wrap(){ // make wrapping more smooth
    if(myCenterX > width+5)  
      myCenterX = -5;    
    if (myCenterX < -5)  
      myCenterX = width+5;    
    
    if(myCenterY > height+5)
      myCenterY = -5;    
    if (myCenterY < -5)
      myCenterY = height+5;    
  }
  
  public double getX(){
     return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
