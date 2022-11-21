///@description cutscene_create_dialogue
///@arg myNames
///@arg myTexts
///@arg myFaces
function cutscene_create_dialogue(argument0, argument1, argument2) {

	if(myDialogueBox==noone){
		myDialogueBox= instance_create_layer(x,y, "HUD",Obj_DialogueBox)
		//Les informations spécifiques pour la boîte de dialoguq
		myDialogueBox.name = argument0;
		myDialogueBox.text = argument1;
		myDialogueBox.face = argument2;
		myDialogueBox.boxMaster= self;
	}

	timer-=1;
	if(timer==0){
		myDialogueBox = noone
		cutscene_end_action()
	}



}
