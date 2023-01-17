/*
  TODO list:
  1. figure out the asteroid class cluster:
    1) finish the abstract class (test if non-abstract methods work in their current conditions, if not - give the variables in abstract class their values)
    2) instanciate variables in methods in child classes (this should be done anyway)
  2. add the ability to shoot a bullet from a ship via linkedlist
  3. add the ability to move and turn the ship
  4. add the asteroid appearing timer and mechanism
  5. add the score onto the screen
  6. add collision of bullet with asteroids
  7. add collision of ship with asteroids
  8. add the gameover screen
  9. add the ability to switch between gameover and game screens
  10. add collisions between asteroids
  11. write the highscore to a file with the purpose of reading and loading it later
*/

GameLogic game;

void setup() {
  size(640, 480);
  game = new GameLogic();
}

void draw() {
  game.frame();
}

void keyPressed() {
  if (key == 'w' || key == 's') {
    game.gameScreen.ship.accelerateShip(key);
    key = 'o';
  }
  if (key == 'a' || key == 'd') {
    game.gameScreen.ship.turnShip(key);
    key = 'o';
  }
  if (key == ' ') {
    game.gameScreen.ship.shoot(); 
    key = 'o';
  }
}
