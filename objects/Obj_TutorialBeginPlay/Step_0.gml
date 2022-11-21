/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(alreadyOpended==false&&myDialogueBox==noone){
	//Affichage du dialogue
	Obj_Purakushisu.pause=true;
	myDialogueBox= instance_create_layer(x,y, "HUD",Obj_DialogueBox)
	//Les informations spécifiques pour la boîte de dialogues
	myDialogueBox.name = myNames;
	myDialogueBox.text = myText;
	myDialogueBox.face = myFaces;
	myDialogueBox.boxMaster= self;
	alreadyOpended=true;
}




//cette partie permet d'activer des evenements dès que le dialogue est fini
if(alreadyOpended==true&&myDialogueBox==noone&&finished==false){
	audio_play_sound(Snd_Dojo1,1,true);
	finished=true;
}
timer-=1
if(timer==0){
	myDialogueBox = noone
}
