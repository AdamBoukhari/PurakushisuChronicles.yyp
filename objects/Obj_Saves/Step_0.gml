/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if(place_meeting(x,y,Obj_Purakushisu)){
	if(keyboard_check_pressed(/*KEY_ATTACK*/ ord("Z"))&&myDialogueBox==noone){
		//Affichage du dialogue
		Obj_Purakushisu.pause=true;
		myDialogueBox= instance_create_layer(x,y, "HUD",Obj_DialogueBox)
		//Les informations spécifiques pour la boîte de dialoguq
		myDialogueBox.name = myNames;
		myDialogueBox.text = myText;
		myDialogueBox.face = myFaces;
		myDialogueBox.color=myColors;
		myDialogueBox.boxMaster= self;
		Obj_Purakushisu.last_saved_x=x;
		Obj_Purakushisu.last_saved_y=y;
		Obj_Purakushisu.last_room=room;
	}
} else{
	if(myDialogueBox!=noone){
		Obj_Purakushisu.pause=false;
		instance_destroy(myDialogueBox)
		myDialogueBox=noone;
	}
}

timer-=1;
if(timer==0){
	myDialogueBox = noone
	SixAlreadyPlayed=false;
}


//event quand on atteint un certain message.
if(myDialogueBox!=noone){
	if(myDialogueBox.i==6&&!SixAlreadyPlayed){
		Obj_Purakushisu.hp=Obj_Purakushisu.maxHp
		audio_play_sound(Snd_Saving,1,false)
		SixAlreadyPlayed=true;
	}
}