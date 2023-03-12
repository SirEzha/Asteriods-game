/*
  Abstract class for Asteroid class cluster.
  Each asteroid is concidered a circle for the purposes of hitbox calculations.
*/

abstract class Asteroid {
  
  // variables
  float posX = width/2;
  float posY = height/2;
  float speedX = 0;
  float speedY = 0;
  float mass = 0;
  float radius = 100;
  
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
  
  abstract void drawAsteroid();
  
  abstract void collideAsteroid();
  
  /* This seems redundant
  void collideBullet() {
    splitOrDestroy(); 
  }
  */
  
  abstract void splitOrDestroy(); // this method will split t1 and t2 asteroids and destory t3
}
