/// @function scrHitAcid(whichFood)
/// @description food hits acid and is destroyed
/// @param {objSFood} whichFood the food to hit the acid

var whichFood = argument0;

//Increase acid level
with(objEsophagusControl) {
  acidLevel += whichFood.acidIncreaseRate * (1 / power(whichFood.maxSplits, whichFood.numSplits));  
  acidLevel = clamp(acidLevel, acidMin, 1);  
}


//Currently a brat hitting acid just reduces competition energy
with (whichFood) {
  instance_create_layer(x, y, "Instances", objSploosh);
  
  instance_destroy();
}