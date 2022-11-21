/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

myDialogueBox= noone;
finished=false;
alreadyOpended=false;

timer=-1

//Les noms des différentes personnes si plusieurs personnes parlent
myNames[0] = "Sensei"
myNames[1] = "Sensei"
myNames[2] = "Sensei"
myNames[3] = "Purakushisu"
myNames[4] = "Sensei"
myNames[5] = "Sensei"
myNames[6] = "Purakushisu"
myNames[7] = "Sensei"
myNames[8] = "Sensei"
myNames[9] = "Sensei"
myNames[10] = "Purakushisu"


//Les differents dialogues que la personne va dire
myText[0] = "Félécitation! Tu as réussi le test sans la moindre difficulté. Je suis très fier de toi. "
myText[1] = "Parmis tout mes élèves, tu est la meilleure d'entre tous (tellement pas un mary sue d'anime) "
myText[2] = "Maintenant, voici le katana de maître assassin de notre village. Celui qui est forgé avec l'acier le plus solide de Ruriakku. "
myText[3] = "Woooooow! merci! Il est magnifique. "
myText[4] = "Maintenant, comme promis tu pourra faire parti des différentes excursions que le village fait."
myText[5] = "Justement, un groupe est parti au sud du village pour une certaine urgence. Dorakiko et Dakaku en font parti."
myText[6] = "Ah bon, il se passe quoi?"
myText[7] = "Apparament, un slime géant terrorifie la population locale. Le groupe est allé repérer les environs."
myText[8] = "Ils sont partis depuis quelques minutes, tu ne devrais pas les rater. À ton retour, nous fêterons la cérémonie de votre réussites. Toi et tes amis"
myText[9] = "Est-ce que c'est bien compris?."
myText[10] = "Oui!"

//les différentes faces que la personne qui parle va avoir mais dans ce cas, il y aura tout le temps la meme face
myFaces[0] = Spr_SenseiFaceNormal;
myFaces[1] = Spr_SenseiFaceNormal;
myFaces[2] = Spr_SenseiFaceNormal;
myFaces[3] = Spr_PurakushisuFaceNormal;
myFaces[4] = Spr_SenseiFaceNormal;
myFaces[5] = Spr_SenseiFaceNormal;
myFaces[6] = Spr_PurakushisuFaceNormal;
myFaces[7] = Spr_SenseiFaceNormal;
myFaces[8] = Spr_SenseiFaceNormal;
myFaces[9] = Spr_SenseiFaceNormal;
myFaces[10] = Spr_PurakushisuFaceNormal;