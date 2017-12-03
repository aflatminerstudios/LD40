/// scrEsoAddFoodToQueue(foodType)

var foodType = argument0;

ds_queue_enqueue(objEsophagusControl.foodQueue, foodType);

var xPos = 140;
var yPos = 462;
var f = instance_create_layer(xPos, yPos, "Instances", objFoodInEsophagus);
f.type = foodType;

switch(foodType) {
case FOOD_BRATWURST:
  f.sprite_index = sprSBrat;
  break;
case FOOD_CELERY:
  f.sprite_index = sprSCelery;
  break;
default:
  show_debug_message("Impossible food to put in esophagus");
  f.sprite_index = sprSBrat;
}
