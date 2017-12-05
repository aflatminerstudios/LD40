/// @function scrHitAcid(whichFood)
/// @description food hits acid and is destroyed
/// @param {objSFood} whichFood the food to hit the acid

var whichFood = argument0;

//Increase acid level
with(objEsophagusControl) {
  var mult;
  switch(whichFood.numSplits) {
  case 0:
    mult = 1;
    break;
  case 1:
    mult = 0.4;
    break;
  case 2:
    mult = 0.15;
    break;
  }
  if (whichFood.acidIncreaseRate <= 0) {
    acidLevel += whichFood.acidIncreaseRate * (1 / power(whichFood.maxSplits, whichFood.numSplits));  
  } else {
    acidLevel += whichFood.acidIncreaseRate * mult;  
  }
  acidLevel = clamp(acidLevel, acidMin, 1);  
}


//Currently a brat hitting acid just reduces competition energy
with (whichFood) {
  instance_create_layer(x, y, "Instances", objSploosh);
  
  instance_destroy();
}

audio_play_sound(choose(sndAcidSplash1, sndAcidSplash2, sndAcidSplash3), 0, false);