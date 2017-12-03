/// scrEsoPopFoodFromQueue()
/// Will return a macro value of the form FOOD_foodname as defined in scrDefineMacros

if(scrEsoFoodQueueLength() > 0) {
	var foodType = ds_queue_dequeue(objEsophagusControl.readyQueue);
  //Deletes a piece of food at end of esophagus
  var numInstances = instance_number(objFoodInEsophagus);  
  for (i = 0; i < numInstances; ++i) {
    var f = instance_find(objFoodInEsophagus, i)    
    if (f.path_position == 1 && f.type == foodType) {
      with (f) {
        instance_destroy();
      }
      break;
    }    
  }
  
  return foodType;
}
else
	return noone;