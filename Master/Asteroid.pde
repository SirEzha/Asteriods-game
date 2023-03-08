/*
  Abstract class for Asteroid class cluster.
  Each asteroid is concidered a circle for the purposes of hitbox calculations.
*/

abstract class Asteroid {
  
  // variables
  float posX;
  float posY;
  float speedX;
  float speedY;
  float mass;
  float radius;
  float multiplier;
  
  // getters and setters
  void setPosX(float number) {
    posX = number;
  }
  
  float getPosX() {
    return posX;
  }
  
  void setPosY(float number) {
    posY = number;
  }
  
  float getPosY() {
    return posY;
  }
  
  void setSpeedX(float number) {
    speedX = number;
  }
  
  float getSpeedX() {
    return speedX;
  }
  
  void setSpeedY(float number) {
    speedY = number;
  }
  
  float getSpeedY() {
    return speedY;
  }
  
  float getMass() {
    return mass; 
  }
  
  float getRadius() {
    return radius;
  }
  
  // methods
  void frame() {
    move();
    drawAsteroid();
  }
  
  void move() {
    posX += speedX;
    posY += speedY;
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
  
  abstract void collideAsteroid();
  
  /* This seems redundant
  void collideBullet() {
    splitOrDestroy(); 
  }
  */
  
  abstract void splitOrDestroy(); // this method will split t1 and t2 asteroids and destory t3
}
