///@description cutscene_end_action
function cutscene_end_action() {

	scene++;
	if(scene>array_length_1d(scene_info)-1){
		Obj_Purakushisu.pause=false;
		Obj_Purakushisu.Hud=true;
		Obj_Purakushisu.cameraDecalX=0
		Obj_Purakushisu.cameraDecalY=0;
		instance_destroy(self);
		exit;
	}
	event_perform(ev_other,ev_user0);


}
