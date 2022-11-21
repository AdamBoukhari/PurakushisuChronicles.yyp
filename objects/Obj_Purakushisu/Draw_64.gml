/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if(Hud){
	//affichage des pv
	draw_sprite_ext(Spr_HeartBarBackground,(maxHp-6)/2, 20, 20,3,3,image_angle,image_blend,image_alpha);
	draw_sprite_ext(Spr_HeartBar,hp,20,20,3,3,image_angle,image_blend,image_alpha);

	//affichage de l'argent
	draw_sprite_ext(Spr_MonuronoGold,0,20,90,2,2,image_angle,image_blend,image_alpha);
	draw_set_color(c_white)
	draw_text_transformed(65,97,string(money),1.5,1.5,image_alpha);
}
