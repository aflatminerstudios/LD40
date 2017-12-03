/// @func scrStomachCreateFood()
/// @desc Creates food based ont he esophogus food queue

var type = scrEsoPopFoodFromQueue();

switch (type) {
case FOOD_BRATWURST:
  scrStomachCreateBratwurst(); 
  break;
case FOOD_CELERY:
  scrStomachCreateCelery();
  break;
default:
  scrStomachCreateBratwurst(); 
}