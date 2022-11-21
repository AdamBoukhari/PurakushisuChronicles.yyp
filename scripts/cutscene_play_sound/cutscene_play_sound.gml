///@description cutscene_play_sound
///@arg sound
///@arg priority
///@arg loops
function cutscene_play_sound(argument0, argument1, argument2) {

	audio_play_sound(argument0,argument1,argument2);

	cutscene_end_action();


}
