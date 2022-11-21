/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
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
		/*Obj_Purakushisu.pause=false;
		Obj_Purakushisu.visible=false;
		room_restart()
		room_goto(MainMenu);*/
		game_restart();
		break;
	case 4:
		game_end();
		break;
}