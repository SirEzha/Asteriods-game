/*
  This class manages the game screen. It works with the
  game classes (except bullet which is managed by Ship class) and their methods.
*/

class GameScreen {
  
  Ship ship;
  Asteroid[] asteroids;
  
  // variables
  boolean gameRunning = true;
  int numberOfAsteroids = 0;
  
  final int ASTEROID_ARRAY_LENGTH = 300;
  
  GameScreen() {
     asteroids = new Asteroid[ASTEROID_ARRAY_LENGTH];
     asteroids[0] = new AsteroidT1();
     numberOfAsteroids++;
     ship = new Ship();
  }
  
  // getters and setters
  boolean isGameRunning() {
    return gameRunning; 
  }
  
  // methods
  void frame() {
    background(0);
    for (int i = 0; i < numberOfAsteroids; i++) {
      asteroids[i].frame(); 
    }
    ship.frame();
  }
  
    // this method is supposed to check if the bullet has collided with any asteroid or flew out of bounds
  void checkBullets() {
    for (int i = 0; i < ship.bullets.size(); i++) {
      float tempPosX = ship.bullets.get(i).getPosX();
      float tempPosY = ship.bullets.get(i).getPosY();
      if (tempPosX < 0 || tempPosY < 0) {
        ship.bullets.remove(i); // removing the object from arraylist
      }
      if (tempPosX > width || tempPosY > height) {
        ship.bullets.remove(i); // removing the object from arraylist
      }
      for (int j = 0; j < ASTEROID_ARRAY_LENGTH; j++) {
        float asteroidTempPosX = asteroids[j].getPosX();
        float asteroidTempPosY = asteroids[j].getPosY();
        float dist = (float) Math.pow(Math.pow(asteroidTempPosX, 2) + Math.pow(asteroidTempPosY, 2), 0.5);
        if (dist < asteroids[j].getRadius()) { // checking for collision between bullet and asteroids
          asteroids[j].splitOrDestroy();
          ship.bullets.remove(i);
        }
      }
    }
  }
  
  // this method is supposed to check if any two asteroids have collided
  void checkAsteroids() {
   
  }
}
