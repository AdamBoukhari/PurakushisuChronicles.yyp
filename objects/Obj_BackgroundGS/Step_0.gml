/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(Obj_Purakushisu.x+176/*valeur quand la caméra arrête de bouger)*/<room_width){
	x = camera_get_view_x(view_camera[0])/3
	//y = (Obj_Purakushisu.y-200)/2;

	if(x<0){
		x=0
	}
}else{
	x=(room_width-352)/3 
}