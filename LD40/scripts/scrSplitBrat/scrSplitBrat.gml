///scrSplitBrat(bratToSplit)

var bratToSplit = argument0;

with (bratToSplit) {
  numSplits++;
  var b1 = instance_create_layer(x+50 + xSpeed, y + ySpeed, "Instances", objSBrat);
  b1.numSplits = numSplits;
  b1.xSpeed = sign(b1.x - x) * speedMult;
  b1.ySpeed = sign(b1.y - y) * speedMult;

  var b2 = instance_create_layer(x-50 - xSpeed, y + ySpeed, "Instances", objSBrat);
  b2.numSplits = numSplits;
  b2.xSpeed = sign(b2.x - x) * speedMult;
  b2.ySpeed = sign(b2.y - y) * speedMult;
}