/// @description Set up variables

currentBratwurst = noone;
energy = 100;
energyLossRate = 10; // Per second

// Create initial bratwurst
currentBratwurst = instance_create_layer(100, room_height/2, "Instances", objCBratwurst);