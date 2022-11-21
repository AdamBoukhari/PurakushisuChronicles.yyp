/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
Action= keyboard_check_pressed(/*KEY_ATTACK*/ ord("Z"));
depth=Obj_Purakushisu.depth+1;
myDialogueBox= noone;
timer=-1
SixAlreadyPlayed=false;

//Les noms des différentes personnes si plusieurs personnes parlent
myNames[0] = "Iyou"
myNames[1] = "Iyou"
myNames[2] = "Iyou"
myNames[3] = "Iyou"
myNames[4] = "Iyou"
myNames[5] = "Iyou"
myNames[6] = "Iyou"


//Les couleurs differrentes du texte
myColors[0]=c_white
myColors[1]=c_white
myColors[2]=c_white
myColors[3]=c_white
myColors[4]=c_white
myColors[5]=c_white
myColors[6]=c_yellow


//Les differents dialogues que la personne va dire
myText[0] = "Purakushisu, tu ne me vois pas, mais je suis réelle.   "
myText[1] = "Comme te l'a dis ton maître, tu est mon descendant. Ce qui veux dire que tu possède une partie de mes pouvoirs."
myText[2] = "Certains de mes pouvoirs ne te sont pas accessibles pour l'instant, mais tu possède le pouvoir de remonter le temps."
myText[3] = "En effet, lorsque tu meurt, tu a le pouvoir de revenir au dermier cercle lumineux que tu a activé comme celui-ci"
myText[4] = "Par ailleurs, tu peux seulement utiliser ce pouvoir dans Ruriakku."
myText[5] = "Fait-en bon usage..."
myText[6] = "En d'autres mots: ''Votre progression a été sauvegardée mais pas lorsque quittez le jeu ou revenez dans le menu principal''"


//les différentes faces que la personne qui parle va avoir mais dans ce cas, il y aura tout le temps la meme face
myFaces[0] = Spr_IyouFace;
myFaces[1] = Spr_IyouFace;
myFaces[2] = Spr_IyouFace;
myFaces[3] = Spr_IyouFace;
myFaces[4] = Spr_IyouFace;
myFaces[5] = Spr_IyouFace;
myFaces[6] = Spr_IyouFace;