public class Spaceship extends Floater{  
  public Spaceship(){
    corners = 3;  
    xCorners = new int[] {-8,16,-8};   
    yCorners =  new int[] {8,0,-8};   
    myColor = 150;  
    myCenterX = 250;
    myCenterY = 250;    
    myXspeed = 0;
    myYspeed = 0;   
    myPointDirection = 0;
  }
  
  public void setXSpeed(double x){
    myXspeed = x;
  }
  public double getXSpeed(){
    return myXspeed;
  }
  
  public void setYSpeed(double y){
    myYspeed = y;
  }
  public double getYSpeed(){
    return myYspeed;
  }
  
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public void setCenterX(double x){
    myCenterX = x;
  }
  public void setCenterY(double y){
    myCenterY = y;
  }
  
  public void setPointDirection(double theta){
    myPointDirection = theta;
  }
  public double getPointDirection(){
    return myPointDirection;
  }

}
