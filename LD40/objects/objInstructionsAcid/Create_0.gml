/// @description Setup variables
// You can write your code in this editor

sprCreate = true;

stomach = noone;

currentAcidLevel = 0.3;
oldAcidLevel = currentAcidLevel;

currentIndex = 0;

frameSpeed = room_speed / sprite_get_speed(sprAcid) ;

//alarm[0] = frameSpeed;

surf = surface_create(sprite_get_width(sprStomachMask), sprite_get_height(sprStomachMask));
