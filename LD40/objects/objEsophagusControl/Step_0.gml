/// @description Check for Effects at different acid levels
// You can write your code in this editor


if (acidLevel >= 0.25 && !objStats.warnedAcidEnergy) {
  
  objStats.warnedAcidEnergy = true;
  
  var energyMeter = instance_find(objCompEnergyMeter, 0);
  
  instance_create_depth(energyMeter.x + energyMeter.sprite_width + 10, energyMeter.acidTopY, -100, objAcidEnergyWarning);
}

if (acidLevel >= 1) {
  scrGameOver(); 
}