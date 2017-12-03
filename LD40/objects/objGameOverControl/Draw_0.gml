/// @description Draw Game Over Text
// You can write your code in this editor


var c = draw_get_color();
draw_set_color(c_red);
draw_set_halign(fa_center);

draw_set_font(fontGameOverSmall);
draw_text(400, 50, "Session High Score: " + string(objStats.highScore));
draw_set_font(fontGameOverLarge);
draw_text(400, 150, "Game Over!");
draw_set_font(fontGameOver);
draw_text(400, 350, "Your score was " + string(objStats.currentScore));




draw_set_halign(fa_left);
draw_set_color(c);
draw_set_font(fontStandard);