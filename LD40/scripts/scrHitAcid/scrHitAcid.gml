/// @function scrHitAcid(whichBrat)
/// @description wurst hits acid and is destroyed
/// @param {objSBrat} whichBrat the wurst to hit the acid

var whichBrat = argument0;

//Decrease energy
/*show_debug_message("Lose energy?");

var c = instance_find(objCompetitionControl, 0);
show_debug_message("Instance " + string(c));
show_debug_message(instance_number(objCompetitionControl));
with (c) {
  show_debug_message("Yes, Losing energy");
  energy -= energyLossRate; 
}
*/

//Currently a brat hitting acid just reduces competition energy
with (whichBrat) {
  show_debug_message(string(self.id) + " hit the acid.");
  
  instance_destroy();
}