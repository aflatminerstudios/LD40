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
var lossString;

var minl = 0.10;
var maxl = 0.8;
var level = (objStats.acidLevel - minl) / (maxl - minl) * 100;


show_debug_message(objStats.acidLevel);
show_debug_message(level);
if (objStats.acidLevel >= 0.79) {
  lossString = "You lost because your acid level got too high!";
} else {
  lossString = "You lost because you let your energy drop too low!";
if (objStats.acidLevel > 0.4) {
  acidString = "And you let your acid get up to " + string(round(level)) + "%! Whoops!";
} else {
  acidString = "At least your stomach was only " + string(round(level)) + "% acid!";
}

  draw_text(400, 450, acidString);
}
  draw_text(400, 400, lossString);



draw_set_halign(fa_left);
draw_set_color(c);
draw_set_font(fontStandard);