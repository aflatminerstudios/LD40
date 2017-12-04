/// @description Move sprite as appropriate
// You can write your code in this editor

currentAcidLevel = objEsophagusControl.acidLevel;

if ((oldAcidLevel != currentAcidLevel && stomach != noone)) {
 /* if (sprite_index != sprAcid) {
    sprite_delete(sprite_index);
    sprCreate = true;
  }*/
  if (currentAcidLevel > oldAcidLevel) {
    oldAcidLevel += acidGrowSpeed;
    oldAcidLevel = clamp(oldAcidLevel, 0, currentAcidLevel);
  } else {
    oldAcidLevel -= acidGrowSpeed;
    oldAcidLevel = clamp(oldAcidLevel, currentAcidLevel, 100);
  }
  
  y = stomach.y + (1 - oldAcidLevel) * sprite_get_height(stomach.sprite_index);

}