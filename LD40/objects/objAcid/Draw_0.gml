/// @description Draw sprite with alpha
// You can write your code in this editor

//if (sprCreate) {
  sprCreate = false;
  var spr;
  
  surface_set_target(surf);
  draw_clear_alpha(c_black, 0);
  draw_sprite(sprAcid, currentIndex, sprite_get_xoffset(sprAcid), sprite_get_yoffset(sprAcid));
  var oldIndex = currentIndex;
  if (sprite_index != sprAcid) {    
    sprite_delete(sprite_index); 
  }


  
  sprite_index = sprite_create_from_surface(surf, 0, 0, sprite_get_width(sprAcid), sprite_get_height(sprAcid), false, false, sprite_get_xoffset(sprAcid), sprite_get_yoffset(sprAcid));
  //sprite_index = sprite_duplicate(sprAcid);
  currentIndex = oldIndex;
  draw_clear_alpha(c_black, 0);
  draw_sprite(sprStomachMask, 0, sprite_get_xoffset(sprAcid), sprite_get_yoffset(sprAcid) - (1 - currentAcidLevel) * sprite_get_height(stomach.sprite_index));
    
  spr = sprite_create_from_surface(surf, 0, 0, sprite_width, sprite_height, false, false, sprite_get_xoffset(sprAcid), sprite_get_yoffset(sprAcid));

  surface_reset_target();

  sprite_set_alpha_from_sprite(sprite_index, spr);
  sprite_delete(spr);

//}
  


draw_sprite(sprite_index, 0, x, y);
