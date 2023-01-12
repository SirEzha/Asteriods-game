/*

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
    game.gameScreen.ship.accelerate(key);
    key = 'o';
  }
  if (key == 'a' || key == 'd') {
    game.gameScreen.ship.turn(key);
    key = 'o';
  }
  if (key == ' ') {
    game.gameScreen.ship.shoot(); 
    key = 'o';
  }
}
