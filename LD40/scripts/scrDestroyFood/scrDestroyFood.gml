///scrDestroyFood(targetFood)

var targetFood = argument0;

with (targetFood) {
  instance_destroy(); 
}

audio_play_sound(sndSplit2, 0, false);