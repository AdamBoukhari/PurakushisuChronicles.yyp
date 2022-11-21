/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
draw_sprite_ext(Spr_Credit2,subimg,xPos,yPos,2*scale,2*scale,0,-1,1);
draw_sprite_ext(Spr_Credit,subimg,xPos,yPos,scale,scale,0,-1,1);


draw_set_color(c_white)
draw_text(xPos+20,yPos+40,text)

draw_text_transformed(xPos+20,yPos+60,name,2,2,0)