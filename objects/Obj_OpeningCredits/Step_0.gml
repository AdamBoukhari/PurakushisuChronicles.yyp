/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(subimg<=sprite_get_number(Spr_Credit)){
	subimg+=0.25;
}else{
	subimg=0;
}

if(position=POSITIONS.TopRight){
	xPos=display_get_gui_width()-50-(sprite_get_width(Spr_Credit)*scale)
}
if(position=POSITIONS.DownLeft){
	yPos=display_get_gui_height()-50-(sprite_get_height(Spr_Credit)*scale);
}
if(position=POSITIONS.DownRight){
	xPos=display_get_gui_width()-50-(sprite_get_width(Spr_Credit)*scale)
	yPos=display_get_gui_height()-50-(sprite_get_height(Spr_Credit)*scale);
}