/// @func scrStomachCreateFood()
/// @desc Creates food based ont he esophogus food queue

var type = scrEsoPopFoodFromQueue();


var foodObj = objSBrat;
switch (type) {
case FOOD_BRATWURST:
  foodObj = objSBrat;
  break;
case FOOD_CELERY:
  foodObj = objSCelery;
  break;
default:
  foodObj = objSBrat;
}

var foodSprite = object_get_sprite(foodObj);

var r = random(1.5);

var theFood = instance_create_layer(objStomachControl.x - 100 + sprite_get_width(foodSprite) / 2, objStomachControl.y + 95, "Instances", foodObj);
theFood.xSpeed = r;
theFood.ySpeed = sqrt(1.75 - r);
theFood.ySpeed = clamp(theFood.ySpeed, 0.5, 7.0);