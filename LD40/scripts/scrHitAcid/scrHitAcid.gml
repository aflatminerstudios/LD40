/// @function scrHitAcid(whichFood)
/// @description food hits acid and is destroyed
/// @param {objSFood} whichFood the food to hit the acid

var whichFood = argument0;

//TODO: Remove this
//Decrease energy
with (objCompetitionControl) {  
  energy -= energyLossRate; 
}

//Increase acid level
with(objEsophagusControl) {
  acidLevel += acidIncreaseRate; 
}


//Currently a brat hitting acid just reduces competition energy
with (whichFood) {
  show_debug_message(string(self.id) + " hit the acid.");
  
  instance_destroy();
}