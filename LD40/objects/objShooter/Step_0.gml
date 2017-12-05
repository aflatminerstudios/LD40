/// @description Shoot
// You can write your code in this editor

image_angle = point_direction(mouse_x, mouse_y, x, y) + 90;

if (mouse_check_button_pressed(mb_any) && !inDelay && (objStats.alarm[0] <= 0)) {
  hasShot = true;
  
  var pdist = point_distance(sprite_xoffset, sprite_yoffset, 30, 4);
  var pdir = point_direction(sprite_xoffset, sprite_yoffset, 30, 4);

  var newx = x + lengthdir_x(pdist, pdir + image_angle);
  var newy = y + lengthdir_y(pdist, pdir + image_angle);

  var bullet = instance_create_layer(newx, newy, "Instances", objBullet);
  bullet.targetX = mouse_x;
  bullet.targetY = mouse_y;

  audio_play_sound(choose(sndLowPew1, sndLowPew2, sndLowPew3), 0, false); 
  inDelay = true;
  
  alarm[0] = delayTime;
  alarm[1] = checkWarning;
}