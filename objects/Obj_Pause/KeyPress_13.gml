/// @description Selection d'un bouton
// Vous pouvez écrire votre code dans cet éditeur
switch(menuIndex){
	case 0:
		Obj_Purakushisu.pause=false;
		instance_destroy(self);
		break;
	case 1:
		show_message("Pas_Implémenté");
		break;
	case 2:
		show_message("Pas_Implémenté");
		break;
	case 3:
		room_goto(MainMenu);
		break;
	case 4:
		Obj_Purakushisu.pause=false;
		Obj_Purakushisu.visible=false;
		game_end();
		break;
}