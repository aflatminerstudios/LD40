/// @description If no food, spawn faster
// You can write your code in this editor


if (instance_number(objSFood) < 2 && alarm[0] > 1) {
  alarm[0] = 1;
}