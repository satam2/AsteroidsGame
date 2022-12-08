class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getPointDirection();
    accelerate(6);
  }
  
  public void show(){ 
    noStroke();
    fill(255,0,0);
    ellipse((float) myCenterX, (float) myCenterY, 7, 7);
  }
  
  protected void wrap(){ // make wrapping more smooth
    if(myCenterX < 0 || myCenterX > 500)
      myCenterX = -50;
    if(myCenterY < 0 || myCenterY > 500)
      myCenterY = -50;
  }
  
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
