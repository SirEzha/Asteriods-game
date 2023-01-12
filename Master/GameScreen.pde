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
}
