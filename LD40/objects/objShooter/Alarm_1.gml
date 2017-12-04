/// @description Spawn warning if appropriate
// You can write your code in this editor


if (!hasShot) {
  if (instance_number(objSBrat) > 0 && instance_number(objBratwurstWarning) == 0) {
    instance_create_depth(475, 200, -100, objBratwurstWarning);
  }
}


hasShot = false;
alarm[1] = checkWarning;

