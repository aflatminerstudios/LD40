///scrDestroyFood(targetFood)

var targetFood = argument0;

with (objStomachControl) {
  part_particles_create(pSystem, targetFood.x, targetFood.y, particle1, 1);
}

with (targetFood) {
  //effect_create_below(ef_explosion, x, y, 0.5, merge_color(c_red, c_yellow, 0.25 + random(0.5)));//make_colour_hsv(random(255), 255, 255));  
  instance_destroy(); 
}

audio_play_sound(sndSplit2, 0, false);