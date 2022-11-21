/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(instance_exists(Obj_Purakushisu)){
	Obj_Purakushisu.visible=false;
}

myTimer-=1;

if(myTimer==0){
	sprite_index=Spr_PurakushisuDead;
	random_set_seed(randomize()); 
	randomGameOver=choose(1,2,3,4,5,6,7,8,9,10);
	if(randomGameOver==10){
		specialLayer = layer_create(99);
		specialBackgroundLayer = layer_background_create(specialLayer, Spr_GameOverSecret);
		layer_background_speed(specialBackgroundLayer, 12);
		audio_play_sound(Snd_GameOverSecret, 1,true);
	}else{
		audio_play_sound(Snd_GameOver,1,true)
	}
	gameOverGui = instance_create_layer(x,y,"Instances", Obj_GameOverGui);
}