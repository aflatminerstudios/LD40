/// @description Setup Variables
// You can write your code in this editor

currentIndex = 0;
frameSpeed = room_speed / sprite_get_speed(sprSploosh);

alarm[0] = frameSpeed;

show_debug_message(frameSpeed);

surf = surface_create(sprite_get_width(sprStomachMask), sprite_get_height(sprStomachMask));
