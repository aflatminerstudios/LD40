/// @func scrGameOver()
/// Causes the end of the game to happen

with (objStats) {
  //Update scores on stats item
  var esophagus = instance_find(objEsophagusControl, 0); 
  currentScore = esophagus.foodItems;
  if (currentScore > highScore) {
    highScore = currentScore; 
  }
  
 
  //Go to next room
  if (alarm[0] <= 0) {
    alarm[0] = room_speed;
    
    //Destroy all falling food
    with (objSFood) {
        instance_destroy(); 
    }

    //Remove all items from queues
    with (objEsophagusControl) {
      ds_queue_destroy(foodQueue);
      ds_queue_destroy(readyQueue);
      foodQueue = ds_queue_create();
      readyQueue = ds_queue_create();
    }

    //Remove all esophagal items
    with (objFoodInEsophagus) {
      instance_destroy(); 
    }
  }
}

with (objCompetitor) {
  alarm[0] = -1;
  alarm[1] = -1;
}

