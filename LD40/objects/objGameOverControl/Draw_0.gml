/// @description Draw Game Over Text
// You can write your code in this editor


var c = draw_get_color();
draw_set_color(c_red);
draw_set_halign(fa_center);

draw_set_font(fontGameOverSmall);
draw_text(400, 50, "Session High Score: " + string(objStats.highScore));
draw_set_font(fontGameOverLarge);
draw_text(400, 150, "Game Over");
draw_set_font(fontGameOverLarge);
draw_text(400, 300, "Your score: " + string(objStats.currentScore));

draw_set_font(fontGameOverSmall);
var acidString;
if (objStats.acidLevel > 0.5) {
  acidString = "And you let your acid get up to " + string(round(objStats.acidLevel * 100)) + "%! Whoops!";
} else {
  acidString = "At least your stomach was only " + string(round(objStats.acidLevel * 100)) + "% acid!";
}

draw_text(400, 400, acidString);

draw_set_halign(fa_left);
draw_set_color(c);
draw_set_font(fontStandard);