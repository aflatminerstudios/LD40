/// @func scrGameOver()
/// Causes the end of the game to happen

show_debug_message("Game over!");

with (objStats) {
  var esophagus = instance_find(objEsophagusControl, 0); 
  currentScore = esophagus.foodItems;
  if (currentScore > highScore) {
    highScore = currentScore; 
  }
  alarm[0] = room_speed;
}
