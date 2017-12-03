/// scrHoldFood()

var competitor = global.competitor;

competitor.image_index = competitor.holdingImageIndex;
competitor.image_speed = competitor.holdingImageSpeed;

competitor.state = COMPETITOR_HOLDING;