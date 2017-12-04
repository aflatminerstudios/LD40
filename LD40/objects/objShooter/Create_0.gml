/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, "Instances", objShooterWheel);

inDelay = false;

delayTime = room_speed * 0.3;

hasShot = false;

checkWarning = room_speed * 5;

alarm[1] = checkWarning;