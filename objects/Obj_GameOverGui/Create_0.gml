/// C'est les variables principales
// Vous pouvez écrire votre code dans cet éditeur
alpha=0;
//variables
menuX = display_get_gui_width() /2; /**Position en x**/
menuY =  300; /**Position en x**/
buttonH = 32; /**Taille de chaques elements du menu**/

//Boutons
button[0] = "Restart";
button[1] = "Main Menu";

buttons = array_length_1d(button);

menuIndex = 0;
lastSelected=0;
