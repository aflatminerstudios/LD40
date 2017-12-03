/// scrEatFood()

objCompetitor.image_index = objCompetitor.eatingImageIndex;
objCompetitor.image_speed = objCompetitor.eatingImageSpeed;

objCompetitor.alarm[1] = image_number - eatingImageIndex;

objCompetitor.state = COMPETITOR_EATING;

with(objCompFood) {
	instance_destroy();
}
