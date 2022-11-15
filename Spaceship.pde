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
  
  public void setMyXSpeed(double x){
    myXspeed = x;
  }
  public double getMyXSpeed(){
    return myXspeed;
  }
  
  public void setMyYSpeed(double y){
    myYspeed = y;
  }
  public double getMyYSpeed(){
    return myYspeed;
  }
  
  public double getMyCenterX(){
    return myCenterX;
  }
  public double getMyCenterY(){
    return myCenterY;
  }
  
  public void setMyPointDirection(double theta){
    myPointDirection = theta;
  }
  public double getMyPointDirection(){
    return myPointDirection;
  }

}
