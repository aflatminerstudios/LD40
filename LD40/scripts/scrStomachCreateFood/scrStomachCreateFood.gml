/// @func scrStomachCreateFood()
/// @desc Creates food based ont he esophogus food queue

var type = scrEsoPopFoodFromQueue();
var foodSprite = objSBrat;
switch (type) {
case FOOD_BRATWURST:
  foodSprite = objSBrat;
  break;
case FOOD_CELERY:
  foodSprite = objSCelery;
  break;
default:
  foodSprite = objSBrat; 
}


var r = random(1.5);

var theFood = instance_create_layer(objStomachControl.x - 100 + sprite_get_width(foodSprite) / 2, objStomachControl.y + 95, "Instances", objSBrat);
theFood.xSpeed = r;
theFood.ySpeed = sqrt(1.5 - r);