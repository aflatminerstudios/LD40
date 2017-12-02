/// @description Decrease energy by energyLossRate

energy = energy - energyLossRate/room_speed;

// Clamp energy level
energy = clamp(energy, 0, energyMax);