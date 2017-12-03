/// @description 

image_speed = 1;

energyValue = 0;
foodType = choose(FOOD_BRATWURST, FOOD_CELERY);


switch(foodType) {

	case FOOD_CELERY:
		energyValue = ENERGY_CELERY;
		sprite_index = sprCompCelery;
		image_index = 0;
		break;
	
	case FOOD_BRATWURST:
	default:
		energyLevel = ENERGY_BRATWURST;
		sprite_index = sprCompBratwurst;
		image_index = 0;
		break;
		
}
