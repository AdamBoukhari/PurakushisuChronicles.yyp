/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(place_meeting(x,y,Obj_Purakushisu)){
	if(Obj_Purakushisu.hp!=Obj_Purakushisu.maxHp){
		audio_play_sound(Snd_Heal,1,false);
		Obj_Purakushisu.hp+=2;
		instance_destroy(self);
	}
}