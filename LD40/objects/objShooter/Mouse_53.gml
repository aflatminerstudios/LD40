/// @description Shoot
// You can write your code in this editor


var bullet = instance_create_layer(x, y, "Instances", objBullet);
bullet.targetX = mouse_x;
bullet.targetY = mouse_y;