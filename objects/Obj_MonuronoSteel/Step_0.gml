/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(place_meeting(x,y,Obj_Purakushisu)){
	audio_play_sound(Snd_Money,1,false);
	Obj_Purakushisu.money+=10;
	instance_destroy(self)
}
