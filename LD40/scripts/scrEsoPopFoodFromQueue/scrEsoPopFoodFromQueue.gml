/// scrEsoPopFoodFromQueue()
/// Will return a macro value of the form FOOD_foodname as defined in scrDefineMacros

if(scrEsoFoodQueueLength() > 0)
	return ds_queue_enqueue(objEsophagusControl.foodQueue);
else
	return noone;