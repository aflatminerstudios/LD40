/// @description Setup variables


orderingImageIndex = 0;
holdingImageIndex = 6;
eatingImageIndex = 7;

orderingImageSpeed = 1;
holdingImageSpeed = 0;
eatingImageSpeed = 1;

state = COMPETITOR_ORDERING;

global.competitor = self.id;

// Order food
scrOrderFood();
