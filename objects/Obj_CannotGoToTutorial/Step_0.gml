/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(place_meeting(x,y,Obj_Purakushisu)){
	if(alreadyOpened==false&&myDialogueBox==noone&&timer<0){
		//Affichage du dialogue
		Obj_Purakushisu.pause=true;
		myDialogueBox= instance_create_layer(x,y, "HUD",Obj_DialogueBox)
		//Les informations spécifiques pour la boîte de dialogues
		myDialogueBox.name = myNames;
		myDialogueBox.text = myText;
		myDialogueBox.face = myFaces;
		myDialogueBox.boxMaster= self;
		alreadyOpened=true;
	}
}else{
	alreadyOpened=false;
}

if(alreadyOpened==true&&myDialogueBox==noone){
}


timer-=1
if(timer==0){
	myDialogueBox = noone
}
