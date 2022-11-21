/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(doTransition){
	//géger le fondu
	if(room!=spawnRoom){
		blackAlpha+=0.1;
		if(blackAlpha>=1){
			Obj_Purakushisu.x=spawnX;
			Obj_Purakushisu.y=spawnY;
			//Ça c'est pour le respawn des trous
			Obj_Purakushisu.xSpawn=spawnX
			Obj_Purakushisu.ySpawn=spawnY
			room_goto(spawnRoom);
		}
	}else{
		blackAlpha-=0.1;
		if(blackAlpha<=0){
			doTransition=false;
		}
	}
	
	
	//Faire le fondu noir
	draw_set_alpha(blackAlpha);
	draw_rectangle_colour(0,0,guiWidth,guiHeight,c_black,c_black,c_black,c_black, false);
	draw_set_alpha(1);
}

