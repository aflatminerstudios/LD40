/// @description Finish eating food (order new food)

// Move food into esophagus
objEsophagusControl.foodItems++; // Remove when queue system is finalized  --  Micha TODO
scrEsoAddFoodToQueue(FOOD_BRATWURST); // Update to actual value --  Micha TODO
objCompetitionControl.energy += 20;

// Order new food
scrOrderFood();
