/// @description Draw the score

var currentScore = objEsophagusControl.foodItems;
var scoreString;
	
var ones = currentScore mod 10;
var tens = floor((currentScore mod 100)/10);
var hundreds = floor((currentScore mod 1000)/100);
scoreString = string(hundreds) + " " + string(tens) + " " + string(ones);

draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fontScoreboard);
draw_set_color($cc7800);
draw_text(x, y+8, string(scoreString));