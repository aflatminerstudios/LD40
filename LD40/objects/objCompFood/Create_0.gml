/// @description 

image_speed = 1;

energyValue = 0;

// Get bratwursts for the first 5 food items, random after that
if(objEsophagusControl.foodItems > 5)
	foodType = choose(FOOD_BRATWURST, FOOD_BRATWURST, FOOD_BRATWURST, FOOD_BRATWURST, FOOD_BRATWURST, FOOD_BRATWURST, FOOD_CELERY);
else 
	foodType = FOOD_BRATWURST;
	
switch(foodType) {

	case FOOD_CELERY:
		energyValue = ENERGY_CELERY;
		sprite_index = sprCompCelery;
		image_index = 0;
    var s = "Celery";
		break;
	
	case FOOD_BRATWURST:
	default:
		energyValue = ENERGY_BRATWURST;
		sprite_index = sprCompBratwurst;
		image_index = 0;
    var s = "Bratwurst";
		break;
		
}