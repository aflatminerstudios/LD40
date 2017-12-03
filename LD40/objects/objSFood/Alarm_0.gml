/// @description Move brat
// You can write your code in this editor


speedMult = objStomachControl.stomachSpeedMult;

if (place_meeting(x + xSpeed, y + ySpeed, objStomach)) {
  xSpeed *= -1;
} else {
  x += xSpeed * speedMult;
  y += ySpeed * speedMult;
}


alarm[0] = 1;