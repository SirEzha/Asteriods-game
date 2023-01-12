class Ship {
  
  Bullet[] bullets;
  
  // variables
  int livesAmount;
  float posX = width/2;
  float posY = height/2;
  float speedX = 0;
  float speedY = 0;
  float accelX = 0;
  float accelY = 0;
  float angle = 0;
  
  // constants
  final float sizeX = 10;
  final float sizyY = 10;
  final int BULLET_ARRAY_LENTH = 10;
  
  Ship() {
    bullets = new Bullet[BULLET_ARRAY_LENTH]; 
  }
  
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

  void setAccelX(float number) {
    accelX = number; 
  }
  
  float getAccelX() {
    return accelX;
  }
  
  void setAccelY(float number) {
    accelY = number; 
  }
  
  float getAccelY() {
    return accelY;
  }
  
  void setLivesAmount(int number) {
    livesAmount = number; 
  }
  
  int getLivesAmount() {
    return livesAmount;
  }

  // methods
  void frame() {
    rectMode(CENTER);
    translate(posX, posY);
    rotate(angle);
    square(0, 0, sizeX);
  }
  
  void accelerate(char direction) {
    if (direction == 'w') {
      accelX += 1 * cos(angle);
      accelY += 1 * sin(angle);
    }
    if (direction == 's') {
      accelX -= 1 * cos(angle);
      accelY -= 1 * sin(angle);
    }
  }
  
  void move() {
    speedX += accelX;
    speedY += accelY;
    posX += speedX;
    posY += speedY;
  }
  
  void turn(char direction) {
    print(direction);
    if (direction == 'a') {
      print(angle);
      angle += 0.2;
    }
    if (direction == 'd') {
      angle -= 0.2; 
    }
  }
  
  void shoot() {
    
  }
  
  void collideAsteroid() {
    return; 
  }
}
