/// @description Setup variables
// You can write your code in this editor

sprCreate = true;

stomach = noone;

currentAcidLevel = objEsophagusControl.acidLevel;
acidGrowSpeed = 0.01;
oldAcidLevel = currentAcidLevel;

currentIndex = 0;

frameSpeed = room_speed / sprite_get_speed(sprAcid) ;

alarm[0] = frameSpeed;
