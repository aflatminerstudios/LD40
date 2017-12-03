/// @description Finish eating food (order new food)

// Move food into esophagus
objEsophagusControl.foodItems++; // Used for score
scrEsoAddFoodToQueue(objCompFood.foodType);
objCompetitionControl.energy += objCompFood.energyValue;

// Order new food
scrOrderFood();
