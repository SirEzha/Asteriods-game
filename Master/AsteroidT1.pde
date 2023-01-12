class AsteroidT1 extends Asteroid {
  
  float radius;
  float posX;
  float posY;
  float speedX;
  float speedY;
  float mass;
  
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
  }
  
  void move() {
    posX += speedX;
    posY += speedY;
  }
  
  void collideAsteroid() {
    
  }
  
  void collideBullet() {
    
  }
  
  // splits into 2 t2
  void splitOrDestroy() {
    
  }
}
