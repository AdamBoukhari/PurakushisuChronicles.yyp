///@description cutscene_alpha_up
///@arg Obj
function cutscene_alpha_up(argument0) {




	with(argument0){
		alpha+=0.02
	
	}

	if(argument0.alpha>=1){
		cutscene_end_action()
	}



}
