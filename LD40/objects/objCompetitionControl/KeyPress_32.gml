/// @description Eat currentFood

if(currentFood != noone) {
	objEsophagusControl.foodItems++;
	energy += currentFood.energyValue;
	instance_destroy(currentFood);
	currentFood = noone;
	
	// kick off adding new food item
	currentFood = scrCompCreateFood();
}

