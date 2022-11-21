/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(place_meeting(x,y,Obj_Purakushisu)){
	if(keyboard_check_pressed(/*KEY_ATTACK*/ ord("Z"))&&myDialogueBox==noone){
		//Affichage du dialogue
		sprite_index=Spr_DorakikoAssetNormal
		Obj_Purakushisu.pause=true;
		myDialogueBox= instance_create_layer(x,y, "HUD",Obj_DialogueBox)
		//Les informations spécifiques pour la boîte de dialoguq
		myDialogueBox.name = myNames;
		myDialogueBox.text = myText;
		myDialogueBox.face = myFaces;
		myDialogueBox.boxMaster= self;
	}
} else{
	if(myDialogueBox!=noone){
		sprite_index=Spr_DorakikoAssetCrouch
		Obj_Purakushisu.pause=false;
		instance_destroy(myDialogueBox)
		myDialogueBox=noone;
	}
}

timer-=1;
if(timer==0){
	myDialogueBox = noone
}