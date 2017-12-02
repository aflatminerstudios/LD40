/// @description Split brat
// You can write your code in this editor

if (numSplits < maxSplits) {
  scrSplitBrat(self.id);
  instance_destroy();
} else {
  scrDestroyBrat(self.id);
}