/// @description DealDamage(target, amount)
/// @param target
/// @param amount
function DestroyTonneau(argument0) {
	if(argument0.breaked=false){
		argument0.breaked=true
		argument0.sprite_index=Spr_TonneauBreak
		random_set_seed(randomize()); 
		randomInstance=choose(1,2,3,4,5,6,7,8,9,10);
		if(randomInstance==3){
			instance_create_layer(x,y,"Instances",Obj_MonuronoBronze)
		}
		if(randomInstance==4){
			instance_create_layer(x,y,"Instances",Obj_MonuronoBronze)
		}
		if(randomInstance==5){
			instance_create_layer(x,y,"Instances",Obj_MonuronoBronze)
		}
		if(randomInstance==6){
			instance_create_layer(x,y,"Instances",Obj_MonuronoSteel)
		}
		if(randomInstance==7){
			instance_create_layer(x,y,"Instances",Obj_MonuronoSteel)
		}
		if(randomInstance==8){
			instance_create_layer(x,y,"Instances",Obj_MonuronoGold)
		}
		if(randomInstance==9){
			instance_create_layer(x,y,"Instances",Obj_Life)
		}
		if(randomInstance==10){
			instance_create_layer(x,y,"Instances",Obj_Life)
		}
		randomInstance=0;
	
		audio_play_sound(Snd_WoodBreak, 10, false);
	}


}
