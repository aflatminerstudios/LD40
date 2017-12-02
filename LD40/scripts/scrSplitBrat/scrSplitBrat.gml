///scrSplitBrat(bratToSplit)

var bratToSplit = argument0;

with (bratToSplit) {
  numSplits++;  
  var b1 = instance_create_layer(x, y + ySpeed, "Instances", objSBrat);
  b1.numSplits = numSplits;  
  //This makes sure it doesn't split into/past the walls
  with (b1) {
    for (var i = 0; i < splitDist + xSpeed; ++i) {
      if (place_meeting(x + 1, y, objStomach)) {
        xSpeed *= -1;
        break;
      } else {
        show_debug_message(i);
        x += 1;
      }
    }
  }
  //This changes the direction based on splitting
  b1.xSpeed = sign(b1.x - x) * speedMult;
  b1.ySpeed = sign(b1.y - y) * speedMult;


  var b2 = instance_create_layer(x - xSpeed, y + ySpeed, "Instances", objSBrat);
  b2.numSplits = numSplits;
 
  //This makes sure it doesn't split into/past the walls
  with (b2) {
    for (var i = 0; i < splitDist + xSpeed; ++i) {
      if (place_meeting(x - 1, y, objStomach)) {
        xSpeed *= -1;
        break;
      } else {
        show_debug_message(i);
        x -= 1;        
     }
    }
  }
  //This changes the direction based on splitting
  b2.xSpeed = sign(b2.x - x) * speedMult;
  b2.ySpeed = sign(b2.y - y) * speedMult;
  
}