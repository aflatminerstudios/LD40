/// @description Split hit food
// You can write your code in this editor

var target = other.id;

if (target.object_index == objSCelery && !objStats.warnedCelery) {  
  objStats.warnedCelery = true;
  instance_create_depth(460, 150, -100, objCeleryWarning);
}


if (target.numSplits < target.maxSplits) {
  //scrSplitFood(target);
  scrBounceFood(target);
  instance_destroy();
} else {
  scrDestroyFood(target);
  instance_destroy();
}