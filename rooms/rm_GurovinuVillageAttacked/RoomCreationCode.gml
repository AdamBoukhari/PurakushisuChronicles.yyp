if(!audio_is_playing(Snd_RoadToVillage)){
	audio_stop_all()
	audio_play_sound(Snd_RoadToVillage,1, true);
}
audio_play_sound(Snd_AmbientVillageFire,1,true);