/// @description Insert description here
// You can write your code in this editor

//If not on a path
if (path_position == 1 && !hasTransfered) {
  show_debug_message("Going to next queue");
  scrEsoPopFoodToNextQueue();
  hasTransfered = true;
}