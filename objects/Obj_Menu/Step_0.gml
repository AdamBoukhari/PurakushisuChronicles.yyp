/// @description C'est le code qui permet de faire les actions
// Vous pouvez écrire votre code dans cet éditeur
if(instance_exists(Obj_Purakushisu)){
	Obj_Purakushisu.visible=false;
}

menuMove = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menuIndex+=menuMove;

if(menuIndex<0){
	menuIndex=buttons-1;
}
else if(menuIndex>=buttons){
	menuIndex=0;
}

lastSelected = menuIndex;