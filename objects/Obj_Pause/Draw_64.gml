/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


//draw_sprite_ext(sdw,1,0,0,100,100,image_angle,image_blend,image_alpha)
draw_sprite_ext(Spr_MenuPause,0,menuX,menuY,1,1,image_angle, image_blend, image_alpha);

for(var i=0; i<buttons;i++){
	draw_set_font(Pixel);
	draw_set_color(c_white)
	if(menuIndex=i){
		draw_set_color(c_purple)
	}
	draw_text(menuX, menuY + buttonH*i, button[i])
}
