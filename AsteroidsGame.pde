Spaceship pow = new Spaceship();
Star[] starlight = new Star[500];
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
    starlight[i].twinkle(); // stars twinkle
  }
  swoosh();
  pow.show();
  pow.move();
}

boolean aPressed = false;
boolean dPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

public void keyPressed(){
  if(key == 'a' || key == 'A') // accelerate
    aPressed = true;
  if(key == 'd' || key == 'D')
    dPressed = true;
    
  if(keyCode == LEFT) // rotate
    leftPressed = true;
  if(keyCode == RIGHT)
    rightPressed = true;
  
  if(key == 'g' || key == 'G') // hyperspace
    pow.fade();
}

public void keyReleased(){
  if(key == 'a' || key == 'A')
    aPressed = false;
  if(key == 'd' || key == 'D')
    dPressed = false;
      
  if(keyCode == LEFT)
    leftPressed = false;
  if(keyCode == RIGHT)
    rightPressed = false;
  if(key == 'g' || key == 'G'){ // hyperspace
    pow.setXSpeed(0);
    pow.setYSpeed(0);
    pow.setCenterX(Math.random()*501);
    pow.setCenterY(Math.random()*501);
    pow.turn(Math.random()*360);
  }
}

public void swoosh(){
  if(aPressed)
    pow.accelerate(.025);
  if(dPressed)
    pow.accelerate(-.025);
  if(leftPressed)
    pow.turn(-3);
  if(rightPressed)
    pow.turn(3);
}
