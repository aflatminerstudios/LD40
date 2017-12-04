/// @description Move brat
// You can write your code in this editor

if (!movingUp) {
  speedMult = objStomachControl.stomachSpeedMult;

  if (place_meeting(x + xSpeed, y + ySpeed, objStomach)) {
    xSpeed *= -1;
  } else {
    x += xSpeed * speedMult;
    y += ySpeed * speedMult;
  }
} else {
  moveUpCount++;
  
  if (moveUpCount > 5) {
    scrSplitFood(self.id); 
  }
  x -= abs(xSpeed) * speedMult;
  y -= speedMult * 2;
}

alarm[0] = 1;