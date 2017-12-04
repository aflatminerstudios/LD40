
/// @description Draw sprite with alpha
// You can write your code in this editor

//if (sprCreate) {
  sprCreate = false;
  var spr;
  
  surface_set_target(surf);
  draw_clear_alpha(c_black, 0);
  draw_sprite(sprSploosh, currentIndex, sprite_get_xoffset(sprSploosh), sprite_get_yoffset(sprSploosh));
  var oldIndex = currentIndex;
  if (sprite_index != sprSploosh) {    
    sprite_delete(sprite_index); 
  }
  
  sprite_index = sprite_create_from_surface(surf, 0, 0, sprite_get_width(sprSploosh), sprite_get_height(sprSploosh), false, false, sprite_get_xoffset(sprSploosh), sprite_get_yoffset(sprSploosh));
  //sprite_index = sprite_duplicate(sprSploosh);
  currentIndex = oldIndex;
  draw_clear_alpha(c_black, 0);
  draw_sprite(sprSplooshMask, 0, 0, 0);
  
  var wVal = sprite_width;
  var hVal = sprite_height;
  if ((x - sprite_get_xoffset(sprSploosh) + wVal) >= 800) {
    wVal = 800 - (x - sprite_get_xoffset(sprSploosh)); 
  }
  if ((y - sprite_get_yoffset(sprSploosh) + hVal) >= 600) {
    wVal = 600 - (y - sprite_get_yoffset(sprSploosh)); 
  }
spr = sprite_create_from_surface(surf, 0, 0, sprite_width, sprite_height, false, false, sprite_get_xoffset(sprSploosh), sprite_get_yoffset(sprSploosh));  
  //spr = sprite_create_from_surface(surf, x - sprite_get_xoffset(sprSploosh), y - sprite_get_yoffset(sprSploosh), wVal, hVal, false, false, sprite_get_xoffset(sprSploosh), sprite_get_yoffset(sprSploosh));
//draw_clear_alpha(c_black, 0);
//show_debug_message(sprite_get_width(spr));
//draw_sprite(sprSplooshMask, 0, sprite_get_xoffset(sprSploosh), sprite_get_yoffset(sprSploosh));
//draw_sprite(sprSploosh, currentIndex, sprite_get_xoffset(sprSploosh), sprite_get_yoffset(sprSploosh));
  surface_reset_target();

//draw_surface(surf, 100, 100);
//draw_sprite(spr, 0, 100, 100);
//draw_sprite(sprite_index, 0, 100, 100);

  sprite_set_alpha_from_sprite(sprite_index, spr);
  sprite_delete(spr);

//}
  


draw_sprite(sprite_index, 0, x, y);
