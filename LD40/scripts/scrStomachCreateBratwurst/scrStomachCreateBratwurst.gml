/// @func scrStomachCreateBratwurst
/// @desc creates a bratwurst for the stomach

  
//Spawn bratwurst
var foodSprite = sprSBrat;
var abcd = instance_find(objStomachControl, 0);
show_debug_message(abcd);
var r = irandom(objStomachControl.containerWidth - sprite_get_width(foodSprite));
r -= (objStomachControl.containerWidth - sprite_get_width(foodSprite))/ 2;
  
instance_create_layer(objStomachControl.x - r, objStomachControl.y + 100, "Instances", objSBrat);
