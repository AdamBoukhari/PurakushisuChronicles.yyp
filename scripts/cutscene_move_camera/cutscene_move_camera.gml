///@description move_character
///@arg x
///@arg y
///@arg relative?
///@arg spd
function cutscene_move_camera(argument0, argument1, argument2, argument3) {


	//Controller les limites
	var destX = argument0;
	var destY = argument1;
	if(destX<0){
		destX=Obj_Purakushisu.x;
	}
	if(destY<0){
		destY=Obj_Purakushisu.y;
	}
	if(destX>room_width-camera_get_view_width(view_camera[0]) ){
		destX=room_width-camera_get_view_width(view_camera[0]);
	}
	if(destY>room_height-camera_get_view_height(view_camera[0])){
		destY=room_height-camera_get_view_height(view_camera[0]);
	}


	//Etablir les distances en x, y et les 2
	var distanceX = destX-Obj_Purakushisu.lastCutsceneCameraPosX;
	var distanceY = destY-Obj_Purakushisu.lastCutsceneCameraPosY;

	var distancePX = destX-Obj_Purakushisu.x;
	var distancePY = destY-Obj_Purakushisu.y;

	var distance = sqrt(sqr(distanceX)+sqr(distanceY));

	if(argument2==true){
		var ratioDistance=argument3/distance;
		var hspd=ratioDistance*distanceX
		var vspd=ratioDistance*distanceY
		Obj_Purakushisu.cameraDecalX+=hspd;
		Obj_Purakushisu.cameraDecalY+=vspd;
	}else{
		Obj_Purakushisu.cameraDecalX+=distanceX;
		Obj_Purakushisu.cameraDecalY+=distanceY;
	}




	if((Obj_Purakushisu.x+Obj_Purakushisu.cameraDecalX<=destX+argument3&&Obj_Purakushisu.x+Obj_Purakushisu.cameraDecalX>=destX-argument3)||(Obj_Purakushisu.y+Obj_Purakushisu.cameraDecalY<=destY+argument3&&Obj_Purakushisu.y+Obj_Purakushisu.cameraDecalY>=destY-argument3)){
		Obj_Purakushisu.lastCutsceneCameraPosX=Obj_Purakushisu.x+Obj_Purakushisu.cameraDecalX;
		Obj_Purakushisu.lastCutsceneCameraPosY=Obj_Purakushisu.y+Obj_Purakushisu.cameraDecalY;
		cutscene_end_action();
	}


}
