/// @description Go to game over room
// You can write your code in this editor

var whichSound = choose(sndBurp1, sndBurp2, sndBurp3);

audio_play_sound(whichSound, 100, false);

room_goto(roomGameOver);