/// @description Move sprite as appropriate
// You can write your code in this editor

currentAcidLevel = objEsophagusControl.acidLevel;

if ((oldAcidLevel != currentAcidLevel && stomach != noone) || sprCreate) {
  if (sprite_index != sprAcid) {
    sprite_delete(sprite_index);
    sprCreate = true;
  }
  
  y = stomach.y + (1 - currentAcidLevel) * sprite_get_height(stomach.sprite_index);
  
  
  oldAcidLevel = currentAcidLevel;
}