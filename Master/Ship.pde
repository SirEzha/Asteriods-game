/*
  Ship class.
  The ship is concidered a triangle for the purposes of hitbox calculations.
  
  Since only one instance of ship should exist, maybe implement the singleton??????
*/

import java.util.*;

class Ship {
  
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
  final float SIZE_X = 15;
  final float SIZE_Y = 30;
  //final int BULLET_ARRAY_LENTH = 10;
  
  // lists
  ArrayList<Bullet> bullets = new ArrayList<Bullet>(); 
  
  Ship() {
    
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
    moveShip();
    drawShip();
    for (int i = 0; i < bullets.size(); i++) {
      bullets.get(i).frame();
    }
  }
  
  void accelerateShip(char direction) {
    if (direction == 'w') {
      accelX += 1 * cos(angle);
      accelY += 1 * sin(angle);
    }
    if (direction == 's') {
      accelX -= 1 * cos(angle);
      accelY -= 1 * sin(angle);
    }
  }
  
  void moveShip() {
    speedX += accelX;
    speedY += accelY;
    posX += speedX;
    posY += speedY;
  }
  
  void turnShip(char direction) {
    print(direction);
    if (direction == 'a') {
      angle += 0.2;
    }
    if (direction == 'd') {
      angle -= 0.2; 
    }
  }
  
  void shoot() {
    bullets.add(new Bullet(posX, posY));
  }
  
  void collideAsteroid() {
    return; 
  }
  
  void drawShip() {
    stroke(255);
    strokeWeight(3);
    line(posX, posY - SIZE_Y/2, posX - SIZE_X/2, posY + SIZE_Y/2);
    line(posX, posY + SIZE_Y*(1/4.0), posX - SIZE_X/2, posY + SIZE_Y/2);
    line(posX, posY + SIZE_Y*(1/4.0), posX + SIZE_X/2, posY + SIZE_Y/2);
    line(posX + SIZE_X/2, posY + SIZE_Y/2, posX, posY - SIZE_Y/2);
  }
}
