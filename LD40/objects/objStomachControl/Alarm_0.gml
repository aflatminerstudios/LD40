/// @description Spawn Brat
// You can write your code in this editor

var r = irandom(containerWidth - 64);
r -= (containerWidth - 64)/ 2;

instance_create_layer(x - r, y + 30, "Instances", objSBrat);

alarm[0] = room_speed * 2.0;
