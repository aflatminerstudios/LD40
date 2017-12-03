///scrSplitFood(foodToSplit)

var foodToSplit = argument0;

with (foodToSplit) {
  numSplits++;  
  var f1 = instance_create_layer(x, y + ySpeed, "Instances", foodToSplit.object_index);
  f1.numSplits = numSplits;  
  //This makes sure it doesn't split into/past the walls
  with (f1) {
    for (var i = 0; i < splitDist + xSpeed; ++i) {
      if (place_meeting(x + 1, y, objStomach)) {
        xSpeed *= -1;
        break;
      } else {
        x += 1;
      }
    }
  }
  //This changes the direction based on splitting
  f1.xSpeed = sign(f1.x - x) * speedMult;
  f1.ySpeed = sign(f1.y - y) * speedMult;
  f1.sprite_index = f1.sprites[f1.numSplits];


  var f2 = instance_create_layer(x - xSpeed, y + ySpeed, "Instances", foodToSplit.object_index);
  f2.numSplits = numSplits;
 
  //This makes sure it doesn't split into/past the walls
  with (f2) {
    for (var i = 0; i < splitDist + xSpeed; ++i) {
      if (place_meeting(x - 1, y, objStomach)) {
        xSpeed *= -1;
        break;
      } else {
        x -= 1;        
     }
    }
  }
  //This changes the direction based on splitting
  f2.xSpeed = sign(f2.x - x) * speedMult;
  f2.ySpeed = sign(f2.y - y) * speedMult;
  f2.sprite_index = f2.sprites[f2.numSplits];
  f2.image_xscale = -1;
  
}