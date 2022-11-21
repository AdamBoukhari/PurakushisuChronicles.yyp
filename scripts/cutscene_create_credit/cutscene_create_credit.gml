///@description cutscene_create_credit
///@arg Position
///@arg Role
///@arg Name
function cutscene_create_credit(argument0, argument1, argument2) {



	var myCredit=instance_create_layer(x,y,"HUD",Obj_OpeningCredits)

	myCredit.position=argument0;

	myCredit.text=argument1;

	myCredit.name=argument2;

	cutscene_end_action()


}
