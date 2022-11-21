/// @description affichage du menu
// Vous pouvez écrire votre code dans cet éditeur





for(var i=0; i<buttons;i++){
	draw_set_font(Pixel);
	draw_set_color(c_white)
	if(menuIndex=i){
		draw_set_color(c_purple)
	}
	draw_text(menuX, menuY + buttonH*i, button[i])
}
