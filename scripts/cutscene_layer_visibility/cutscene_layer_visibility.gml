///@description cutscene_layer_visibiility
///@arg layers
function cutscene_layer_visibility(argument0) {



	for(var i=0; i< array_length_1d(argument0);i++){
		if(layer_get_visible(argument0[i])){
			layer_set_visible(argument0[i],false)
		}else{
			layer_set_visible(argument0[i],true)
		}
	}

	cutscene_end_action()


}
