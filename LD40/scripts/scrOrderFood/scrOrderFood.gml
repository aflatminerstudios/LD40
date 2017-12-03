/// scrOrderFood()
// Gets a new food item for the competitor

with(objCompFood) {
	instance_destroy();
}

var competitor = global.competitor;

competitor.image_index = competitor.orderingImageIndex;
competitor.image_speed = competitor.orderingImageSpeed;

competitor.alarm[0] = competitor.holdingImageIndex / competitor.orderingImageSpeed;

competitor.state = COMPETITOR_ORDERING;

instance_create_layer(x, y, "Competitor", objCompFood);