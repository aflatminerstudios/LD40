/// @description Adjust Difficulty Modifiers
// You can write your code in this editor

stomachSpeedMult *= speedRateChange;
spawnTime -= spawnRateChange;
clamp(spawnTime, 1, room_speed * 2);
alarm[1] = difficultyTime;