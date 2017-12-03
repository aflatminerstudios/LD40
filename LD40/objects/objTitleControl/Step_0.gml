/// @description Go to game
// You can write your code in this editor

if (timeComplete) {  
  if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
    room_goto(roomMain); 
  }  
}