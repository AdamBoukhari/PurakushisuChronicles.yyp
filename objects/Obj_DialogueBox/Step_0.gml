/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


//changement de page
if(keyboard_check_pressed(/*KEY_ATTACK*/ ord("Z"))){
	
	if(charCount>=string_length(text[i])){
		if(i < array_length_1d(text)-1){
			i+=1;
			charCount=0;
		}else{
			Obj_Purakushisu.pause=false;
			boxMaster.timer=1;
			instance_destroy();
		}
	}else{
		charCount=string_length(text[i])
	}
	
	
	
	/*if(i < array_length_1d(text)-1){
		if(charCount>=string_length(text[i])){
			i+=1;
			charCount=0;
		}else{
			charCount=string_length(text[i])
		}
	}else{
		Obj_Purakushisu.pause=false;
		boxMaster.timer=1;
		instance_destroy();
	}*/
}

