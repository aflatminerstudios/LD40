/// @function scrDestroyParticleSystem(where)
/// @description Destroy a particle system for use in stomach
/// @param {object} where to destroy

var where = argument0;

with (where) {
  
  part_type_destroy(particle1);
  part_emitter_destroy(pSystem, pEmitter1);
  part_system_destroy(pSystem);
  
}