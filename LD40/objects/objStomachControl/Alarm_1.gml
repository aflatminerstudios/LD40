/// @description Adjust Difficulty Modifiers
// You can write your code in this editor

stomachSpeedMult *= speedRateChange;
spawnTime -= spawnRateChange;
clamp(spawnTime, minSpawnTime, room_speed * 2);
clamp(stomachSpeedMult, minSpeedMult, maxSpeedMult);
alarm[1] = difficultyTime;