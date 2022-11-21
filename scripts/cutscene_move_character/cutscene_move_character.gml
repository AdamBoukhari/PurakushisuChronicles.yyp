///@description move_character
///@arg object
///@arg x
///@arg y
///@arg relative?
///@arg spd
///@arg collisionsBlock?
function cutscene_move_character(argument0, argument1, argument2, argument3, argument4, argument5) {
	var destX = argument1;
	var destY = argument2;
	if(destX<0){
		destX=1;
	}
	if(destY<0){
		destY=1;
	}

	if(destX>=room_width){
		destX=room_width-10;
	}
	if(destY>=room_height){
		destY=room_height-10;
	}

	with(argument0){
		if(argument3){
			mp_potential_step(destX,destY,argument4,argument5)
		}else{
			x=destX;
			y=destY;
		}
	
	}
	if(argument0.x==destX&&argument0.y==destY){
		cutscene_end_action();
	}


}
