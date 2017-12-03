/// @description Handle Input
// You can write your code in this editor

if (timeComplete && !movingView) { 
  if (camera_get_view_x(camera) == 800) {
    if (keyboard_check_pressed(ord("C"))) {    
      alarm[1] = 1;
      
      dir = -1;       
      time = 0;
      movingView = true;
    } else if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
      room_goto(roomMain); 
    }  
  } else {
    if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
      dir = 1;
      movingView = true;
      alarm[1] = 1;
    }
  }
}