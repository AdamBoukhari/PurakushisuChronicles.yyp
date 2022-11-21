/// @description Selection d'un bouton
// Vous pouvez écrire votre code dans cet éditeur
if(alpha==1){	
	switch(menuIndex){
		case 0:
			Obj_Purakushisu.x=Obj_Purakushisu.last_saved_x;
			Obj_Purakushisu.y=Obj_Purakushisu.last_saved_y;
			Obj_Purakushisu.hp=6;
			Obj_Purakushisu.pause=false;
			Obj_Purakushisu.dead=false;
			Obj_Purakushisu.timerKnockback=0;
			room_goto(Obj_Purakushisu.last_room)
			break;
		case 1:
			/*Obj_Purakushisu.pause=false;
			Obj_Purakushisu.visible=false;
			room_restart()
			room_goto(MainMenu);*/
			game_restart();
			break;
	}
}