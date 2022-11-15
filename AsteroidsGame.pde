Spaceship pow = new Spaceship();
Star[] starlight = new Star[500];
double degrees = 0;
public void setup() 
{
  size(500,500);
  background(0);
  for(int i = 0; i < starlight.length; i++)
    starlight[i] = new Star();
}
public void draw() 
{
  background(0);
  for(int i = 0; i < starlight.length; i++){
    starlight[i].show();
    starlight[i].twinkle();
  }
  swoosh();
  pow.show();
  pow.move();
  pow.turn(degrees);
}

boolean wPressed = false;
boolean aPressed = false;
boolean sPressed = false;
boolean dPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

public void keyPressed(){
  if(key == 'w')
    wPressed = true;
  if(key == 'a')
    aPressed = true;
  if(key == 's')
    sPressed = true;
  if(key == 'd')
    dPressed = true;
    
  if(keyCode == LEFT)
    leftPressed = true;
  if(keyCode == RIGHT)
    rightPressed = true;
}

public void keyReleased(){
  if(key == 'w')
    wPressed = false;
  if(key == 'a')
    aPressed = false;
  if(key == 's')
    sPressed = false;
  if(key == 'd')
    dPressed = false;
      
  if(keyCode == LEFT)
    leftPressed = false;
  if(keyCode == RIGHT)
    rightPressed = false;
}

public void swoosh(){
  if(wPressed)
    pow.setMyYSpeed(pow.getMyYSpeed()-0.05);
  if(aPressed)
    pow.setMyXSpeed(pow.getMyXSpeed()-.05);
  if(sPressed)
    pow.setMyYSpeed(pow.getMyYSpeed()+.05);
  if(dPressed)
    pow.setMyXSpeed(pow.getMyXSpeed()+.05);
  if(leftPressed)
    pow.setMyPointDirection(pow.getMyPointDirection()-3);
  if(rightPressed)
    pow.setMyPointDirection(pow.getMyPointDirection()+3);
}
