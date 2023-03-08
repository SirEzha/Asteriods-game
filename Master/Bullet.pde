class Bullet {
  
  // variables
  float posX;
  float posY;
  float speedX;
  float speedY;
  
  // constants    
  final float SIZE = 5;
  
  // getters and setters
  void setPosX(float number) {
    return; 
  }
  
  float getPosX() {
    return posX; 
  }
  
  void setPosY(float number) {
    return; 
  }
  
  float getPosY() {
    return posY; 
  }
  
  void setSpeedX(float number) {
    return; 
  }
  
  // i dont really need this
  float getSpeedX() {
    return speedX; 
  }
  
  void setSpeedY(float number) {
    return; 
  }
  
  // i dont really need this
  float getSpeedY() {
    return speedY; 
  }
  
  // methods
  void frame() {
    moveBullet();
    drawBullet();
  }
  
  void moveBullet() {
    posX += speedX;
    posY += speedY;
  }
  
  void drawBullet() {
    fill(255);
    square(posX, posY, SIZE); 
  }
  
  void disappear() {
    return; 
  }
}
