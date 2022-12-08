class Spaceship extends Floater{  
  public Spaceship(){
    corners = 20;  
    xCorners = new int[] {18,12,2,0,-8,-7,-10,-10,-6,-5,-7,-5,-6,-10,-10,-7,-8,0,2,12};   
    yCorners =  new int[] {0,-3,-5,-9,-12,-9,-9,-7,-7,-5,0,5,7,7,9,9,12,9,5,3};   
    myColor = color(200);  
    myCenterX = 250;
    myCenterY = 250;    
    myXspeed = 0;
    myYspeed = 0;   
    myPointDirection = 0;
  }
  
  protected void wrap(){ // make wrapping more smooth
    if(myCenterX > width+8)  
      myCenterX = -8;    
    if (myCenterX < -8)  
      myCenterX = width+8;    
    
    if(myCenterY > height+8)
      myCenterY = -8;    
    if (myCenterY < -8)
      myCenterY = height+8; 
  }
  
  protected void col(){ // make no stroke
    noStroke();
    fill(myColor);
  }
 
  public void setXSpeed(double x){
    myXspeed = x;
  }
  public void setYSpeed(double y){
    myYspeed = y;
  }
  public void setCenterX(double x){
    myCenterX = x;
  }
  public void setCenterY(double y){
    myCenterY = y;
  }
  
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  public double getXspeed(){
    return myXspeed;
  }
  public double getYspeed(){
    return myYspeed;
  }
