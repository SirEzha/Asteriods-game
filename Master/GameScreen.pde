/*
  This class manages the game screen. It works with the
  game classes and their methods.
*/

Ship ship;
Bullet[] bullet;
Asteroid[] asteroids;

class GameScreen {
  
  // variables
  final int ASTEROID_ARRAY_LENGTH = 300;
  final int BULLET_ARRAY_LENTH = 10;
  
  GameScreen() {
     asteroids = new Asteroid[ASTEROID_ARRAY_LENGTH];
     ship = new Ship();
     bullet = new Bullet[BULLET_ARRAY_LENTH]; // figure out how to manage the fact that the bullet object always exists
  }
  
  // getters and setters
  
  // methods
  void frame() {
    for (int i = 0; i < ASTEROID_ARRAY_LENGTH; i++) {
      asteroids[i].frame(); 
    }
    for (int i = 0; i < BULLET_ARRAY_LENTH; i++) {
      bullet[i].frame(); 
    }
    ship.frame();
  }
}
