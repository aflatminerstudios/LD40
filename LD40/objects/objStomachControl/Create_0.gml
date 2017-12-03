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

baseSpawnTime = room_speed * 0.5;
spawnTime = baseSpawnTime;
spawnRateChange = 0.95;

baseStomachSpeedMult = 1.0;
stomachSpeedMult = baseStomachSpeedMult;
speedRateChange = 1.1;


difficultyTime = room_speed * 10;
alarm[1] = difficultyTime;



alarm[0] = 1;