/// @description Move brat
// You can write your code in this editor



if (place_meeting(x + xSpeed, y + ySpeed, objStomach)) {
  xSpeed *= -1;
} else {
  x += xSpeed;
  y += ySpeed;
}


alarm[0] = 1;