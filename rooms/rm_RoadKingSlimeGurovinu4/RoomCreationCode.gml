if(!audio_is_playing(Snd_RoadToVillage)){
	audio_stop_all()
	audio_play_sound(Snd_RoadToVillage,1, true);
}
if(audio_is_playing(Snd_AmbientVillageFire)){
	audio_stop_sound(Snd_AmbientVillageFire)
}