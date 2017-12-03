/// @func scrStomachCreateCelery
/// @desc creates a celery for the stomach

  
//Spawn bratwurst
var foodSprite = sprSCelery;
var r = irandom(objStomachControl.containerWidth - sprite_get_width(foodSprite));
r -= (objStomachControl.containerWidth - sprite_get_width(foodSprite))/ 2;
  
instance_create_layer(objStomachControl.x - r, objStomachControl.y + 100, "Instances", objSCelery);
