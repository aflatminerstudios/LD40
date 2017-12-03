/// @func scrStomachCreateFood()
/// @desc Creates food based ont he esophogus food queue

var type = scrEsoPopFoodFromQueue();

switch (type) {
case FOOD_BRATWURST:
  scrStomachCreateBratwurst(); 
  break;
case FOOD_CELERY:
  show_debug_message("ERROR: Attempting to create celery, can't do that yet!");
  break;
default:
  scrStomachCreateBratwurst(); 
}