class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 3;
      xCorners = new int[]{0,0,0};
      yCorners = new int[]{0,0,0};
      myColor = color(0,0,0);
      myCenterX = 0;
      myCenterY = 0;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    } 
    public int[] getXCorners(){
      return xCorners;
    }
    public int[] getYCorners(){
      return yCorners;
    }
    public double getMyCenterX(){
      return myCenterX;
    }
    public double getMyCenterY(){
      return myCenterY;
    }
    public double getMyPointDirection(){
      return myPointDirection;
    }
}
