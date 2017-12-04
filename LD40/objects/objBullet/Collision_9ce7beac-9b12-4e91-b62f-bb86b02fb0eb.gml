/// @description Split hit food
// You can write your code in this editor

var target = other.id;


if (target.numSplits < target.maxSplits) {
  //scrSplitFood(target);
  scrBounceFood(target);
  instance_destroy();
} else {
  scrDestroyFood(target);
}