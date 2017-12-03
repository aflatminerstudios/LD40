/// scrOrderFood()
// Gets a new food item for the competitor

with(objCompFood) {
	instance_destroy();
}

objCompetitor.image_index = objCompetitor.orderingImageIndex;
objCompetitor.image_speed = objCompetitor.orderingImageSpeed;

instance_create_layer(x, y, "Competitor", objCompFood);

objCompetitor.alarm[0] = holdingImageIndex;

objCompetitor.state = COMPETITOR_ORDERING;