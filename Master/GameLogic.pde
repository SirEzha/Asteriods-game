/* 
  This class executes the game. It switches between GameScreen
  and GameoverScreen base on the current game situation.
*/

class GameLogic {
  
  GameScreen gameScreen;
  GameoverScreen gameoverScreen;
  
  GameLogic() {
    gameScreen = new GameScreen();
    gameoverScreen = new GameoverScreen();
  }
  
  // variables
  boolean isGameRunning = true;
  
  // getters and setters
  void setGameState(boolean newState) {
    isGameRunning = newState;
  }
  
  boolean getGameState() {
    return isGameRunning; 
  }
  
  // methods
  void frame() {
    checkGameover();
    if (isGameRunning) {
      gameScreen.frame();
    }
    else {
      gameoverScreen.frame(); 
    }
  }
  
  void checkGameover() {
    isGameRunning = gameScreen.isGameRunning(); 
  }
}
