Spaceship pow = new Spaceship();
Star[] starlight = new Star[500];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> mag = new ArrayList <Bullet>();

public void setup() {
  size(500,500);
  background(0);
  for(int i = 0; i < starlight.length; i++)
    starlight[i] = new Star();
  for(int i = 0; i < 10; i++)
    rocks.add(new Asteroid());
}

public void draw() {
  background(0);
  for(int i = 0; i < starlight.length; i++){
    starlight[i].show();
    starlight[i].twinkle(); // stars twinkle
  }
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    if(dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)pow.getX(), (float)pow.getY())<15){
      rocks.remove(i);
      i--;
    }
  }
  swoosh(); // spaceship acceleration and rotation
  pow.show(); 
  pow.move();
}

boolean aPressed = false;
boolean dPressed = false;
boolean addBull = false;
boolean leftPressed = false;
boolean rightPressed = false;

public void keyPressed(){
  if(key == 'a' || key == 'A') // accelerate
    aPressed = true;
  if(key == 'd' || key == 'D')
    dPressed = true;
  if(key == ' ')
     addBull = true;
    
  if(keyCode == LEFT) // rotate
    leftPressed = true;
  if(keyCode == RIGHT)
    rightPressed = true;
}

public void keyReleased(){
  if(key == 'a' || key == 'A')
    aPressed = false;
  if(key == 'd' || key == 'D')
    dPressed = false;
  if(key == ' ')
    addBull = false;
      
  if(keyCode == LEFT)
    leftPressed = false;
  if(keyCode == RIGHT)
    rightPressed = false;
  if(key == 'h' || key == 'H'){ // hyperspace
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
  if(addBull)
    mag.add(new Bullet(pow));
}
