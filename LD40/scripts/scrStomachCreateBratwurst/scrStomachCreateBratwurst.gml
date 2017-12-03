/// @func scrStomachCreateBratwurst
/// @desc creates a bratwurst for the stomach

  
//Spawn bratwurst
var foodSprite = sprSBrat;
var r = irandom(objStomachControl.containerWidth - sprite_get_width(sprSBrat));
r -= (objStomachControl.containerWidth - sprite_get_width(sprSBrat))/ 2;
  
instance_create_layer(objStomachControl.x - r, objStomachControl.y + 100, "Instances", objSBrat);
