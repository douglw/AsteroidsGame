Spaceship bob = new Spaceship();
Star[] sue = new Star[100];
ArrayList <Asteroids> spaceRock;
public void setup() 
{
  size(600,500);
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }
  spaceRock = new ArrayList <Asteroids>();
  for(int i = 0; i < 20; i++){
    spaceRock.add(new Asteroids());
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
  for(int i = 0; i < spaceRock.size(); i++){
    spaceRock.get(i).show();
    spaceRock.get(i).move();
  }
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
    bob.accelerate(-1);
  }
  if(key == 'f'){
    bob.setX((int)(Math.random()*800));
    bob.setY((int)(Math.random()*800));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
  }
}
