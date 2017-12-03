/// @description Set up variables

// Use:
//  scrEsoFoodQueueLength to check size of the food queue
//  scrEsoAddFoodToQueue to add an item (from the competition)
//  scrEsoPopFoodFromQueue to retrieve and remove the next food item from the queue

foodItems = 0; // Remove when queue system is finalized  --  Micha TODO
foodQueue = ds_queue_create();
readyQueue = ds_queue_create();

acidLevel = 0.15;
acidIncreaseRate = 0.01;
