/// @description Spawn Food
// You can write your code in this editor


//Only spawn if there is a food item in the esophagus
if (scrEsoFoodQueueLength() > 0) {
  
  
  scrStomachCreateFood(); 
}

/*if (esophagus.foodItems > 0) {
  var r = irandom(containerWidth - 64);
  r -= (containerWidth - 64)/ 2;

  //TODO: Spawn different types of food
  instance_create_layer(x - r, y + 30, "Instances", objSFood);

  esophagus.foodItems--;

}
*/

alarm[0] = spawnTime;
