class AsteroidT3 extends Asteroid {
  
  // variables
  float radius;
  float posX;
  float posY;
  float speedX;
  float speedY;
  float mass;
  float multiplier;
  
  // methods
  
  void move() {
    
  }
  
  void collideAsteroid() {
    
  }
  
  void collideBullet() {
    
  }
  
  // destoys
  void splitOrDestroy() {
    
  }
  
  void drawAsteroid() {
    line(posX - (440-270)*multiplier, posY - (248-80)*multiplier, posX - (440-315)*multiplier, posY - (248-105)*multiplier);
    line(posX - (440-315)*multiplier, posY - (248-105)*multiplier, posX - (440-425)*multiplier, posY - (248-35)*multiplier);
    line(posX - (440-425)*multiplier, posY - (248-35)*multiplier, posX - (440-500)*multiplier, posY - (248-30)*multiplier);
    line(posX - (440-500)*multiplier, posY - (248-30)*multiplier, posX - (440-635)*multiplier, posY - (248-135)*multiplier);
    line(posX - (440-635)*multiplier, posY - (248-135)*multiplier, posX - (440-660)*multiplier, posY - (248-205)*multiplier);
    line(posX - (440-660)*multiplier, posY - (248-205)*multiplier, posX - (440-680)*multiplier, posY - (248-210)*multiplier);
    line(posX - (440-630)*multiplier, posY - (248-265)*multiplier, posX - (440-680)*multiplier, posY - (248-210)*multiplier);
    line(posX - (440-630)*multiplier, posY - (248-265)*multiplier, posX - (440-705)*multiplier, posY - (248-280)*multiplier);
    line(posX - (440-655)*multiplier, posY - (248-360)*multiplier, posX - (440-705)*multiplier, posY - (248-280)*multiplier);
    line(posX - (440-655)*multiplier, posY - (248-360)*multiplier, posX - (440-555)*multiplier, posY - (248-415)*multiplier);
    line(posX - (440-435)*multiplier, posY - (248-460)*multiplier, posX - (440-555)*multiplier, posY - (248-415)*multiplier);
    line(posX - (440-435)*multiplier, posY - (248-460)*multiplier, posX - (440-430)*multiplier, posY - (248-420)*multiplier);
    line(posX - (440-335)*multiplier, posY - (248-465)*multiplier, posX - (440-430)*multiplier, posY - (248-420)*multiplier);
    line(posX - (440-335)*multiplier, posY - (248-465)*multiplier, posX - (440-220)*multiplier, posY - (248-400)*multiplier);
    line(posX - (440-240)*multiplier, posY - (248-320)*multiplier, posX - (440-220)*multiplier, posY - (248-400)*multiplier);
    line(posX - (440-240)*multiplier, posY - (248-320)*multiplier, posX - (440-185)*multiplier, posY - (248-270)*multiplier);
    line(posX - (440-270)*multiplier, posY - (248-255)*multiplier, posX - (440-185)*multiplier, posY - (248-270)*multiplier);
    line(posX - (440-270)*multiplier, posY - (248-255)*multiplier, posX - (440-175)*multiplier, posY - (248-230)*multiplier);
    line(posX - (440-190)*multiplier, posY - (248-160)*multiplier, posX - (440-175)*multiplier, posY - (248-230)*multiplier);
    line(posX - (440-190)*multiplier, posY - (248-160)*multiplier, posX - (440-270)*multiplier, posY - (248-80)*multiplier);
  }
}
