/// @description Eat currentBratwurst

if(currentBratwurst != noone) {
	objEsophagusControl.foodItems++;
	energy += currentBratwurst.energyValue;
	instance_destroy(currentBratwurst);
	currentBratwurst = noone;
	
	// kick off adding new bratwurst
	currentBratwurst = instance_create_layer(irandom_range(80, 120), room_height/2 + irandom_range(-20, 20), "Instances", objCBratwurst);
}

