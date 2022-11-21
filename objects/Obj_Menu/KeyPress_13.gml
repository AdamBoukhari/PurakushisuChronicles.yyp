/// @description Selection d'un bouton
// Vous pouvez écrire votre code dans cet éditeur
switch(menuIndex){
	case 0:
		if(instance_exists(Obj_Purakushisu)){
			Obj_Purakushisu.x=96;
			Obj_Purakushisu.y=128;
			Obj_Purakushisu.pause=false;
		}
		room_goto(rm_Dojo);
		break;
	case 1:
		show_message("Pas_Implémenté");
		break;
	case 2:
		show_message("Pas_Implémenté");
		break;
	case 3:
		game_end();
		break;
}