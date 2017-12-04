/// @function scrCreateParticleSystem(where)
/// @description Create a particle system for use in stomach
/// @param {object} where to create

var where = argument0;

with (where) {
  
  pSystem = part_system_create();
  part_system_depth(pSystem, where.depth);
  
  particle1 = part_type_create();
  
  part_type_shape(particle1, pt_shape_explosion);
  part_type_size(particle1, 0.1, 0.1, 0.02, 0.01);
  part_type_scale(particle1, 1, 1);
  part_type_colour_mix(particle1, c_red, c_yellow);
  part_type_alpha1(particle1, 1);
  part_type_speed(particle1, 0.20, 0.20, 0, 0);
  part_type_direction(particle1, 0, 359, 0, 20);
  part_type_orientation(particle1, 0, 359, 0, 0, 1);
  part_type_blend(particle1, true);
  part_type_life(particle1, 20, 40);
  
  
  particle2 = part_type_create();
  part_type_shape(particle2, pt_shape_spark);
  //part_type_size(particle2, 0, 0, 0.01, 0);
  part_type_size(particle2, 0.2, 0.2, 0.02, 0.01);
  part_type_scale(particle2, 1, 1);
  part_type_colour1(particle2, c_white);
  part_type_alpha1(particle2, 0.50);
  //part_type_speed(particle2, 4, 4, -0.07, 1);
  part_type_speed(particle2, 0.20, 0.20, 0, 0);
  part_type_direction(particle2, 0, 359, 0, 20);
  part_type_orientation(particle2, 0, 359, 0, 20, 1);
  part_type_blend(particle2, true);
  part_type_life(particle2, 5, 10);
  
  
  pEmitter1 = part_emitter_create(pSystem);
}
