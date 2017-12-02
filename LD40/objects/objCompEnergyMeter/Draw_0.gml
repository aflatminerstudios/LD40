/// @description Draw meter based on energy level

// Tweakable values
var barHeight = room_height*0.75;
var barWidth = 20;
var barBorderWidth = 1.0;
var barLeftX = 40;
var barTopY = 30;

// Derived values
var energy = objCompetitionControl.energy;
var energyMax = objCompetitionControl.energyMax;
var energyPercent = energy/energyMax;
var acidPercent = objEsophagusControl.acidLevel;

var barRightX = barLeftX + barWidth
var barBottomY = barTopY + barHeight;

var acidTopY = barBottomY - acidPercent*barHeight;
var energyTopY = barBottomY - energyPercent*barHeight;

var barColor;
var adjustedEnergyPercent = energyPercent - acidPercent;
if(adjustedEnergyPercent > 0.40)
	barColor = c_green;
else if(adjustedEnergyPercent > 0.20)
	barColor = c_orange;
else
	barColor = c_red;
	
var acidColor = c_yellow;
var acidAlpha = 1.0;

// Draw semi-transparent background
draw_set_alpha(0.7);
draw_roundrect_colour_ext(barLeftX, barTopY, barRightX, barBottomY, 5, 5, c_black, c_black, false);
draw_set_alpha(1.0);

// Draw energy level
draw_roundrect_colour_ext(barLeftX, energyTopY, barRightX, barBottomY, 5, 5, barColor, barColor, false);

// Draw acid level
draw_set_alpha(acidAlpha);
draw_roundrect_colour_ext(barLeftX, acidTopY, barRightX, barBottomY, 5, 5, acidColor, acidColor, false);
draw_set_alpha(1.0);

// Draw outline
draw_roundrect_colour_ext(barLeftX, barTopY, barRightX, barBottomY, 5, 5, c_white, c_white, true);