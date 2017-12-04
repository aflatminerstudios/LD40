/// @function scrBounceFood(whichFood)
/// @description food bounces before splitting
/// @param {objSFood} whichFood the food to bounce

var whichFood = argument0;


with (objStomachControl) {
  part_particles_create(pSystem, whichFood.x, whichFood.y + whichFood.sprite_height/2, particle2, 1);
}


whichFood.movingUp = true;