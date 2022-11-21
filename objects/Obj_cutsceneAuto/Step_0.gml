/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(IsPlayed==true){

	Obj_Purakushisu.lastCutsceneCameraPosX=Obj_Purakushisu.x;
	Obj_Purakushisu.lastCutsceneCameraPosY=Obj_Purakushisu.y;
	cutscene_create(t_scene_info);
	instance_destroy(self);

}else{
	IsPlayed=true;
}