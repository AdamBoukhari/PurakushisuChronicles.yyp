///@description cutscene_set_lighting
///@arg Color
function cutscene_set_lighting(argument0) {

	instance_destroy(Obj_DayLighting);

	instance_create_layer(x,y,"Player",Obj_DayLighting)

	Obj_DayLighting.color=argument0;

	cutscene_end_action()


}
