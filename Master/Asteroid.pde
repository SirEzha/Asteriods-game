abstract class Asteroid {
  
  // variables
  float radius;
  float posX;
  float posY;
  float speedX;
  float speedY;
  float mass;
  
  // getters and setters
  abstract void setPosX(float number);
  
  abstract float getPosX();
  
  abstract void setPosY(float number);
  
  abstract float getPosY();
  
  abstract void setSpeedX(float number);
  
  abstract float getSpeedX();
  
  abstract void setSpeedY(float number);
  
  abstract float getSpeedY();
  
  abstract float getMass();
  
  abstract float getRadius();
  
  // methods
  abstract void frame();
  
  abstract void move();
  
  abstract void collideAsteroid();
  
  abstract void collideBullet();
  
  abstract void splitOrDestroy(); // this method will split t1 and t2 asteroids and destory t3
}
