///@description cutscene_create
///@arg scene_info
function cutscene_create(argument0) {

	var inst =  instance_create_layer(0,0,"instances",Obj_CutScene);
	with(inst){
		scene_info= argument0;
		event_perform(ev_other, ev_user0);
	}


}
