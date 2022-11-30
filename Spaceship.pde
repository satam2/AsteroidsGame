class Spaceship extends Floater{  
  public Spaceship(){
    corners = 3;  
    xCorners = new int[] {-8,16,-8};   
    yCorners =  new int[] {8,0,-8};   
    myColor = color(150,150,150);  
    myCenterX = 250;
    myCenterY = 250;    
    myXspeed = 0;
    myYspeed = 0;   
    myPointDirection = 0;
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
}
