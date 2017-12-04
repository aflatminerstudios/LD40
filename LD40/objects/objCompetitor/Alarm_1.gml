/// @description Finish eating food (order new food)

// Move food into esophagus
objEsophagusControl.foodItems++; // Used for score
scrEsoAddFoodToQueue(objCompFood.foodType);
objCompetitionControl.energy += objCompFood.energyValue;

// Chance to play a burp sound if it isn't celery
if(objCompFood.foodType != FOOD_CELERY && random(1) <= 0.20) {
	audio_play_sound(choose(sndBurp1, sndBurp2, sndBurp3), 0, false);
}

// Order new food
scrOrderFood();
