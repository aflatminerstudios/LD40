/// @description Split brat
// You can write your code in this editor

if (numSplits < maxSplits) {
  scrSplitFood(self.id);
  instance_destroy();
} else {
  scrDestroyFood(self.id);
}