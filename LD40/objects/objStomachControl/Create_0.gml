/// @description Initialize stomach variables
// You can write your code in this editor

randomize();

stomach = instance_create_layer(x, y, "BGObjects", objStomach);
stomachShadow = instance_create_layer(x, y, "FG_Shadows", objStomachShadow);

acid = instance_create_layer(x, y, "Instances", objAcid);
acid.y = stomach.y + (1 - objEsophagusControl.acidLevel) * sprite_get_height(stomach.sprite_index);

acid.stomach = stomach;

esophagus = instance_find(objEsophagusControl, 0);

baseSpawnTime = room_speed * 0.5;
spawnTime = baseSpawnTime;
minSpawnTime = room_speed * 0.2;
spawnRateChange = 1;


baseStomachSpeedMult = 1.0;
stomachSpeedMult = baseStomachSpeedMult;
minSpeedMult = 0.5;
maxSpeedMult = 5.0;
speedRateChange = 1.10;

difficultyTime = room_speed * 6; 
alarm[1] = difficultyTime;

scrCreateParticleSystem(self.id);

alarm[0] = 1;