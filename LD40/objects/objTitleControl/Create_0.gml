/// @description Setup Variables
// You can write your code in this editor

timeComplete = false;
movingView = false;
dir = -1;

viewSpeed = 20;

camera = view_camera;

time = 0;


alarm[0] = room_speed * 1;


if (!audio_is_playing(sndMainTheme)) {
  audio_play_sound(sndMainTheme, 100, true); 
}
