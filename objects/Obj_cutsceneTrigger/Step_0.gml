/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(myOriginalRoom==room){
	if(!instance_exists(Obj_CutScene)){
		if(place_meeting(x,y,Obj_Purakushisu)){
			Obj_Purakushisu.lastCutsceneCameraPosX=Obj_Purakushisu.x;
			Obj_Purakushisu.lastCutsceneCameraPosY=Obj_Purakushisu.y;
			cutscene_create(t_scene_info);
			instance_destroy(self);
		}
	}
}