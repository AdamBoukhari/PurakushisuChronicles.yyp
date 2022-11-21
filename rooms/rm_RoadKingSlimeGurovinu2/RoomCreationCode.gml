
if(instance_exists(Obj_cutsceneTrigger)){
	if(!audio_is_playing(Snd_Forest)){
		audio_stop_all()
		audio_play_sound(Snd_Forest,1, true);
	}
}else{
	if(!audio_is_playing(Snd_RoadToVillage)){
		audio_stop_all()
		audio_play_sound(Snd_RoadToVillage,1, true);
	}
}
