/// @function scrCompCreateMaskedSprite(spriteOffsetX, spriteOffsetY, unmaskedSprite, imageIndex, maskSprite)

var spriteOffsetX = argument0;
var spriteOffsetY = argument1;
var unmaskedSprite = argument2;
var imageIndex = argument3;
var maskSprite = argument4;


//spriteOffsetX = 0;
//spriteOffsetY = 0;

var clipx = room_width/2;
var clipy = room_height/2;

var mask_surface = global.mask_surface;
var clip_surface = global.clip_surface;

if (!surface_exists(mask_surface)) {
    // create the mask-surface, if needed
    mask_surface = surface_create(256, 256);
		global.mask_surface = mask_surface;
    surface_set_target(mask_surface);
    draw_clear(c_black);
    gpu_set_blendmode(bm_subtract);
		
    // cut out shapes out of the mask-surface:
    draw_circle(128, 128, 128, false); // Mask (hole) sprite
    //draw_sprite(maskSprite, 0, sprite_get_xoffset(maskSprite), sprite_get_yoffset(maskSprite));
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
}
if (!surface_exists(clip_surface)) {
    // create the clip-surface, if needed
    clip_surface = surface_create(256, 256);
		global.clip_surface = clip_surface;
}

// start drawing:
surface_set_target(clip_surface);
draw_clear_alpha(c_black, 0);
// draw things relative to clip-surface:
//draw_circle(mouse_x - clipx, mouse_y - clipy, 40, false); // Unmasked sprite (to be clipped) at imageIndex
draw_sprite(unmaskedSprite, imageIndex, mouse_x - clipx, mouse_y - clipy);
// cut out the mask-surface from it:
gpu_set_blendmode(bm_subtract);
draw_surface(mask_surface, 0, 0);
gpu_set_blendmode(bm_normal);
draw_set_color(c_white);
draw_circle(128, 128, 128, true); // Redraw clipping circle (debug), remove --  Micha TODO
surface_reset_target();

draw_surface(clip_surface, clipx, clipy);

// Turn surface into sprite
var clippedSprite = sprite_create_from_surface(clip_surface, 0, 0, sprite_get_width(unmaskedSprite), sprite_get_height(unmaskedSprite), false, false, sprite_get_xoffset(unmaskedSprite), sprite_get_yoffset(unmaskedSprite));
return clippedSprite;