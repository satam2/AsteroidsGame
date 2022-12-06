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
  for(int i = 0; i < starlight.length; i++){ // showing stars
    starlight[i].show();
    starlight[i].twinkle(); // stars twinkle
  }
  for(int i = 0; i < rocks.size(); i++){ // rock and ship collision
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)pow.getX(), (float)pow.getY());
    if(d<15){
      rocks.remove(i);
      i--;
    }
  }
  for(int i = 0; i < mag.size(); i++){ 
    mag.get(i).show();
    mag.get(i).move();
  }
  for(int j = 0; j < mag.size(); j++){ // bullet and rock collision
    for(int i = 0; i < rocks.size(); i++){
      float d = dist((float)mag.get(j).getX(), (float)mag.get(j).getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
      if(d<10)
        break;
    }
     mag.remove(j);
  }
  swoosh(); // spaceship acceleration and rotation
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
  if(key == ' ')
     mag.add(new Bullet(pow));
    
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
}
