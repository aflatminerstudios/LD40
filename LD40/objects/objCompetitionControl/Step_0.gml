/// @description Decrease energy by energyLossRate

energy = energy - energyLossRate/room_speed;

// Clamp energy level
energy = clamp(energy, 0, energyMax);

var acidPercent = (objEsophagusControl.acidLevel - objEsophagusControl.acidMin) * 100;

if (acidPercent >= energy) {
 // scrGameOver();
}