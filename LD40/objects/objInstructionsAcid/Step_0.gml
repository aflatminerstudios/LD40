/// @description Move sprite as appropriate
// You can write your code in this editor
if (stomach != noone) {
  y = stomach.y + (1 - currentAcidLevel) * sprite_get_height(stomach.sprite_index) * stomach.image_yscale;
}