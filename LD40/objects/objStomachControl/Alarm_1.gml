/// @description Adjust Difficulty Modifiers
// You can write your code in this editor

stomachSpeedMult *= speedRateChange;
spawnTime -= spawnRateChange;
spawnTime = clamp(spawnTime, minSpawnTime, room_speed * 2);
stomachSpeedMult = clamp(stomachSpeedMult, minSpeedMult, maxSpeedMult);
alarm[1] = difficultyTime;