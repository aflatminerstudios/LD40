/// scrEsoPopFoodFromQueue()

if(scrEsoFoodQueueLength() > 0)
	return ds_queue_enqueue(objEsophagusControl.foodQueue);
else
	return noone;