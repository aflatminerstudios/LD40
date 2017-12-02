/// @description Set up variables

currentFood = noone;
energy = 100;
energyLossRate = 10; // Per second

// Create initial food (First one shold always be a wurst)
currentFood = scrCompCreateWurst();