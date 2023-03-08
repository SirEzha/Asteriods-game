/*
  This class manages the game screen. It works with the
  game classes (except bullet which is managed by Ship class) and their methods.
*/

class GameScreen {
  
  Ship ship;
  Asteroid[] asteroids;
  
  // variables
  boolean gameRunning = true;
  
  final int ASTEROID_ARRAY_LENGTH = 300;
  
  GameScreen() {
     asteroids = new Asteroid[ASTEROID_ARRAY_LENGTH];
     ship = new Ship();
  }
  
  // getters and setters
  boolean isGameRunning() {
    return gameRunning; 
  }
  
  // methods
  void frame() {
    background(0);
    for (int i = 0; i < ASTEROID_ARRAY_LENGTH; i++) {
      //asteroids[i].frame(); 
    }
    ship.frame();
  }
  
    // this method is supposed to check if the bullet has collided with any asteroid or flew out of bounds
  void checkBullets() {
    for (int i = 0; i < ship.bullets.size(); i++) {
      float tempPosX = ship.bullets.get(i).posX;
      float tempPosY = ship.bullets.get(i).posY;
      if (tempPosX < 0 || tempPosY < 0) {
        ship.bullets.remove(i); 
      }
      if (tempPosX > width || tempPosY > height) {
        ship.bullets.remove(i); 
      }
      for (int i = 0; i < asteroids.length(); i++) {
        if  
      }
    }
  }
  
  // this method is supposed to check if any two asteroids have collided
  void checkAsteroids() {
   
  }
}
