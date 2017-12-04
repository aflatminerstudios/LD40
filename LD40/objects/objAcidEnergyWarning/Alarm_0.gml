/// @description Turn flash on and off
// You can write your code in this editor

 
if (flashCount <= flashMax) {

  spriteOn = !spriteOn;
  flashCount++

  alarm[0] = flashSpeed;
} else {
  instance_destroy(); 
}