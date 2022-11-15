class Star {
  private float mySize, myPulse;
  private int myX, myY;
  public Star(){
    mySize = (float)(Math.random()*2)+0.2;
    myPulse = 0.005;
    myX = (int)(Math.random()*501);
    myY = (int)(Math.random()*501);
  }
  public void show(){
    fill(255);
    noStroke();
    ellipse(myX, myY, mySize, mySize);
  }
  
  public void twinkle(){
    mySize += myPulse;
    if(mySize > 2.2)
      myPulse = -0.005;
    if(mySize < 0.2)
      myPulse = 0.005;
  }
}
