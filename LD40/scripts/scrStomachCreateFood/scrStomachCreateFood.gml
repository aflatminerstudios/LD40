/// @func scrStomachCreateFood()
/// @desc Creates food based ont he esophogus food queue

var type = scrEsoPopFoodFromQueue();
var foodSprite = sprSBrat;
switch (type) {
case FOOD_BRATWURST:
  foodSprite = sprSBrat;
  break;
case FOOD_CELERY:
  foodSprite = sprSCelery;
  break;
default:
  foodSprite = sprSBrat; 
}


var r = random(1.5);

var theFood = instance_create_layer(objStomachControl.x - 100 + sprite_get_width(foodSprite) / 2, objStomachControl.y + 95, "Instances", objSBrat);
theFood.xSpeed = r;
theFood.ySpeed = sqrt(1.5 - r);
clamp(theFood.ySpeed, 0.3, 5.0);