/// @description Shoot
// You can write your code in this editor

var pdist = point_distance(sprite_xoffset, sprite_yoffset, 30, 4);
var pdir = point_direction(sprite_xoffset, sprite_yoffset, 30, 4);

var newx = x + lengthdir_x(pdist, pdir + image_angle);
var newy = y + lengthdir_y(pdist, pdir + image_angle);

var bullet = instance_create_layer(newx, newy, "Instances", objBullet);
bullet.targetX = mouse_x;
bullet.targetY = mouse_y;

audio_play_sound(choose(sndLowPew1, sndLowPew2, sndLowPew3), 0, false);