/// scrEatFood()

var competitor = global.competitor;

competitor.image_index = competitor.eatingImageIndex;
competitor.image_speed = competitor.eatingImageSpeed;

competitor.alarm[1] = (competitor.image_number - competitor.eatingImageIndex)/competitor.eatingImageSpeed;

competitor.state = COMPETITOR_EATING;


objCompFood.image_alpha = 0;
