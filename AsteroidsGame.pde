Spaceship bob = new Spaceship();
Star[] sue = new Star[100];
ArrayList <Asteroids> spaceRock;
ArrayList <Bullets> lasers = new ArrayList<Bullets>();
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
    if(dist(spaceRock.get(i).getX(), spaceRock.get(i).getY(), bob.getX(), bob.getY()) < 20){
      spaceRock.remove(i);
      i--;
    }
  }
  for(int i = 0; i < lasers.size(); i++){
    for(int j = 0; j < spaceRock.size(); j++){
      lasers.get(i).show();
      lasers.get(i).move();
      if(dist((int)spaceRock.get(j).getX(), (int)spaceRock.get(j).getY(), lasers.get(i).getX(), lasers.get(i).getY()) < 20){
        lasers.remove(i);
        spaceRock.remove(j);
        i--;
        j--;
        break;
      }
    }
  }
}
public void keyPressed(){
  if(key == 'a'){
    bob.turn(-10);
  }
  else if(key == 'd'){
    bob.turn(10);
  }
  else if(key == 'w'){
    bob.accelerate(0.5);
  }
  else if(key == 's'){
    bob.accelerate(-0.5);
  }
  else if(key == 'f'){
    bob.setX((int)(Math.random()*800));
    bob.setY((int)(Math.random()*800));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
  }
  else if(key == 'e'){
    lasers.add(new Bullets(bob));
  }
}
