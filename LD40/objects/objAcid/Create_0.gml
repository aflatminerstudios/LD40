/// @description Setup variables
// You can write your code in this editor

//sprite_set_alpha_from_sprite()

sprCreate = true;

stomach = noone;

currentAcidLevel = objEsophagusControl.acidLevel;
oldAcidLevel = -100;

currentIndex = 0;

frameSpeed = room_speed / sprite_get_speed(sprAcid) ;

alarm[0] = frameSpeed;