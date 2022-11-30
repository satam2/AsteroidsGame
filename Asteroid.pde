class Asteroid extends Floater{
  private double rotSpeed;
  Asteroid(){
    rotSpeed = (double)(Math.random()*8)-4;
    corners = 7;//(int)(Math.random()*3)+6;
    xCorners = new int[]{-6,-1,1,5,6,-2,-7}; 
    yCorners = new int[]{6,4,5,2,-8,-7,-1};
    myColor = color(149,139,132);
    myCenterX = (float)(Math.random()*500);
    myCenterY = (float)(Math.random()*500);
    myXspeed = (float)(Math.random()*4)-2;
    myYspeed = (float)(Math.random()*4)-2;
    myPointDirection = (float)(Math.random()*360);
  }
  
  // choose asteroid skin
  //public void choose(){
  //  if(corners == 6){
  //    xCorners[0] = -6;
  //    xCorners[1] = -1;
  //    xCorners[2] = 1;
  //    xCorners[3] = 5;
  //    xCorners[4] = 6;
  //    xCorners[5] = -2;

  //    yCorners[0] = 6;
  //    yCorners[1] = 4;
  //    yCorners[2] = 5;
  //    yCorners[3] = 2;
  //    yCorners[4] = -8;
  //    yCorners[5] = -7;

  //  }
  //  if(corners == 7){
  //    xCorners[0] = -6;
  //    xCorners[1] = -1;
  //    xCorners[2] = 1;
  //    xCorners[3] = 5;
  //    xCorners[4] = 6;
  //    xCorners[5] = -2;
  //    xCorners[6] = -7;

  //    yCorners[0] = 6;
  //    yCorners[1] = 4;
  //    yCorners[2] = 5;
  //    yCorners[3] = 2;
  //    yCorners[4] = -8;
  //    yCorners[5] = -7;
  //    yCorners[6] = -1;
  //  }
  //  if(corners == 8){
  //    xCorners[0] = 0;
  //    xCorners[1] = 0;
  //    xCorners[2] = 0;
  //    xCorners[3] = 0;
  //    xCorners[4] = 0;
  //    xCorners[5] = 0;
  //    xCorners[6] = 0;
  //    xCorners[7] = 0;

  //    yCorners[0] = 0;
  //    yCorners[1] = 0;
  //    yCorners[2] = 0;
  //    yCorners[3] = 0;
  //    yCorners[4] = 0;
  //    yCorners[5] = 0;
  //    yCorners[6] = 0;
  //    yCorners[7] = 0;
  //  }
  //}
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
