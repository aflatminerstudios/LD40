/// @description Set up variables

// Tweakable variables
energyMax = 100;
energyLossRate = 10; // Per second


// Control variables
energy = energyMax;
currentFood = noone;

// Create energy meter object
instance_create_layer(0, 0, "Competition_UI", objCompEnergyMeter);

// Create initial food (First one shold always be a wurst)
currentFood = scrCompCreateWurst();

//remove this comment if you see it