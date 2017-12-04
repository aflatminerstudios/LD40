/// @description Go to game
// You can write your code in this editor

if (timeComplete) {  
  if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
    var whichSound = choose(sndChomp1, sndChomp2, sndChomp3, sndChomp4);
    audio_play_sound(whichSound, 100, false);
    room_goto(roomMain); 
  }  
}