/// @description Move sprite as appropriate
// You can write your code in this editor

currentAcidLevel = objEsophagusControl.acidLevel;

if ((oldAcidLevel < currentAcidLevel && stomach != noone)) {
 /* if (sprite_index != sprAcid) {
    sprite_delete(sprite_index);
    sprCreate = true;
  }*/
  oldAcidLevel += acidGrowSpeed;
  clamp(oldAcidLevel, 0, currentAcidLevel);
  
  y = stomach.y + (1 - oldAcidLevel) * sprite_get_height(stomach.sprite_index);

}