/* 
  This class executes the game. It switches between GameScreen
  and GameoverScreen base on the current game situation.
*/

GameScreen gameScreen;
GameoverScreen gameoverScreen;

class GameLogic {
  
  GameLogic() {
    gameScreen = new GameScreen();
    gameoverScreen = new GameoverScreen();
  }
  
  // variables
  boolean isGameRunning;
  
  // getters and setters
  void setGameState(boolean newState) {
    isGameRunning = newState;
  }
  
  boolean getGameState() {
    return isGameRunning; 
  }
  
  // methods
  void frame() {
    if (isGameRunning) {
      gameScreen.frame();
    }
    else {
      gameoverScreen.frame(); 
    }
  }
}
