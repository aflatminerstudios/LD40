/// @description Draw Game Over Text
// You can write your code in this editor

draw_set_font(fontGameOver);
var c = draw_get_color();
draw_set_color(c_red);
draw_set_halign(fa_center);

draw_text(400, 100, "Game Over!");
draw_text(400, 300, "You lose!");
draw_text(400, 500, "Your score was " + string(objStats.currentScore));

draw_set_halign(fa_left);
draw_set_color(c);
draw_set_font(fontStandard);