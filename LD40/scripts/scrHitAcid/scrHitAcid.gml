/// @function scrHitAcid(whichBrat)
/// @description wurst hits acid and is destroyed
/// @param {objSBrat} whichBrat the wurst to hit the acid

var whichBrat = argument0;

//Decrease energy
with (objCompetitionControl) {  
  energy -= energyLossRate; 
}

//Currently a brat hitting acid just reduces competition energy
with (whichBrat) {
  show_debug_message(string(self.id) + " hit the acid.");
  
  instance_destroy();
}