Spaceship bob = new Spaceship();
Star[] sue = new Star[100];
public void setup() 
{
  size(600,500);
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < sue.length; i++){
    sue[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed(){
  if(key == 'a'){
    bob.turn(-10);
  }
  if(key == 'd'){
    bob.turn(10);
  }
  if(key == 'w'){
    bob.accelerate(1);
  }
  if(key == 's'){
    bob.accelerate(1);
  }
  if(key == 'f'){
    bob.setX((int)(Math.random()*800));
    bob.setY((int)(Math.random()*800));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
  }
}
