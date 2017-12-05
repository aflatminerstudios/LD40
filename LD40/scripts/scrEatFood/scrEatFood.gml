/// scrEatFood()

// Check if e are in game over state
if(objStats.alarm[0] > 0)
	return;
	
var competitor = global.competitor;

competitor.image_index = competitor.eatingImageIndex;
competitor.image_speed = competitor.eatingImageSpeed;

competitor.alarm[1] = (competitor.image_number - competitor.eatingImageIndex)/competitor.eatingImageSpeed;

competitor.state = COMPETITOR_EATING;

if(objCompFood.foodType == FOOD_CELERY)
	audio_play_sound(sndCrunch1, 0, false);
else	
	audio_play_sound(choose(sndChomp1, sndChomp2, sndChomp3, sndChomp4), 0, false);
	

objCompFood.image_alpha = 0;
