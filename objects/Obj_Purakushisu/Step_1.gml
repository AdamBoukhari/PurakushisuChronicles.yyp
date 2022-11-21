/// @description Déplacer la caméra
// Vous pouvez écrire votre code dans cet éditeur

 window_set_caption("Purakushisu Chronicles's");
#region MOVE THE VIEW

halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;
var posX =  x - halfViewWidth+cameraDecalX;
var posY = y - halfViewHeight-20+cameraDecalY;

if(posX<0){
	posX=0;
}
if(posY<0){
	posY=0;
}
if(posX>room_width- camera_get_view_width(view_camera[0]) ){
	posX=room_width- camera_get_view_width(view_camera[0]);
}
if(posY>room_height- camera_get_view_height(view_camera[0]) ){
	posY=room_height- camera_get_view_height(view_camera[0]);
}

camera_set_view_pos(view_camera[0],posX, posY);

#endregion