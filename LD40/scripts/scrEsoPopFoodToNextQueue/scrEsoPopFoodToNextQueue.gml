/// @func scrEsoPopFoodToNextQueue
/// @desc Will move food from one queue to the next

if(ds_queue_size(objEsophagusControl.foodQueue) > 0) {
  var foodType = ds_queue_dequeue(objEsophagusControl.foodQueue);
  ds_queue_enqueue(objEsophagusControl.readyQueue, foodType);
}
