/// @description Insert description here
// You can write your code in this editor

currentIndex = (currentIndex + 1);

if (currentIndex == sprite_get_number(sprSploosh)) {
  instance_destroy(); 
}

alarm[0] = frameSpeed;