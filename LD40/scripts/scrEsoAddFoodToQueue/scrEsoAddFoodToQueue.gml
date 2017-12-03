/// scrEsoAddFoodToQueue(foodType)

var foodType = argument0;

ds_queue_enqueue(objEsophagusControl.foodQueue, foodType);

var xPos = 140;
var yPos = 462;
instance_create_layer(xPos, yPos, "Instances", objFoodInEsophagus);
