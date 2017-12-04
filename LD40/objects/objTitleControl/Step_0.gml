/// @description Handle Input
// You can write your code in this editor

if (timeComplete && !movingView) { 
  if (camera_get_view_x(camera) == 800) {
    if (keyboard_check_pressed(ord("C")) || (mouse_check_button_pressed(mb_any) && ((mouse_x > 1410 && mouse_x < 1568) && (mouse_y > 525 && mouse_y < 566)))) {    
      alarm[1] = 1;
      
      dir = -1;       
      time = 0;
      movingView = true;
    } else if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {         
      room_goto(roomInstructions); 
    }  
  } else {
    if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
      dir = 1;
      movingView = true;
      alarm[1] = 1;
    }
  }
}