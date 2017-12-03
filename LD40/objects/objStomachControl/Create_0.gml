/// @description Initialize stomach variables
// You can write your code in this editor

randomize();

containerWidth = 350;
containerHeight = 500;

stomach = instance_create_layer(x, y, "BGObjects", objStomach);

acid = instance_create_layer(x, y, "Instances", objAcid);
acid.y = stomach.y + (1 - objEsophagusControl.acidLevel) * sprite_get_height(stomach.sprite_index);

acid.stomach = stomach;

esophagus = instance_find(objEsophagusControl, 0);

spawnTime = room_speed * 0.5;


alarm[0] = 1;