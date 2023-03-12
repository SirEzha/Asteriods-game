class Bullet {
  
  // variables
  float posX;
  float posY;
  final float SPEED_X = 5;
  final float SPEED_Y = 5;
  
  // constants    
  final float SIZE = 5;
  
  Bullet(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
  }
  
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

  
  // i dont really need this
  float getSpeedX() {
    return SPEED_X; 
  }
  
  // i dont really need this
  float getSpeedY() {
    return SPEED_Y; 
  }
  
  // methods
  void frame() {
    moveBullet();
    drawBullet();
  }
  
  void moveBullet() {
    posX += SPEED_X;
    posY += SPEED_Y;
  }
  
  void drawBullet() {
    fill(255);
    square(posX, posY, SIZE); 
  }
  
  void disappear() {
    return; 
  }
}
