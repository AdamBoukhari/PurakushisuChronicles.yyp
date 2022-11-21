/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

draw_set_alpha(alpha);
draw_set_halign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(menuX, menuY - (buttonH*2), "Game Over", 3, 3, 0)

for(var i=0; i<buttons;i++){
	draw_set_font(Pixel);
	draw_set_color(c_white)
	if(menuIndex=i){
		draw_set_color(c_purple)
	}
	draw_text(menuX, menuY + buttonH*i, button[i])
}
draw_set_halign(fa_left);
draw_set_alpha(1);