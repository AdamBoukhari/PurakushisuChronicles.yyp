/// @description Affichage du dialogue
// Vous pouvez écrire votre code dans cet éditeur

//draw face
draw_sprite_ext(face[i],0, x-200, y-50,3,3,0,-1,1);

//draw textbox
draw_sprite_ext(Spr_DialogueBox,0,x,y,3.5,3.5,0,-1,1);

//draw text
draw_set_font(Pixel);
if(color[0]==undefined){
	draw_set_color(c_white);
}else{
	draw_set_color(color[i])
}
if(charCount < string_length(text[i])){
	charCount+=1;/*ici c'est pour incrementer le nombre de lettres dans le message chaque frame*/
}
textPart= string_copy(text[i], 1, charCount);
draw_text_ext(x+120,y+110,textPart,stringHeight,boxWidth);

//draw name
draw_set_font(Pixel);
draw_set_color(c_black)
draw_text_transformed(x+90,y+65,name[i],1.5,1.5,17);


