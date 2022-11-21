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
myNames[3] = "Sensei"
myNames[4] = "Sensei"
myNames[5] = "Sensei"
myNames[6] = "Sensei"
myNames[7] = "Sensei"
myNames[8] = "Sensei"
myNames[9] = "Purakushisu"


//Les differents dialogues que la personne va dire
myText[0] = "Purakushisu! Après 10 ans d'entrainement aux arts martiaux et aux techniques d'assassinats,"
myText[1] = "il est maintenant temps pour toi de me montrer ce que tu sais dans cet examen final. "
myText[2] = "Il te suffit juste de te rendre à l'autre bout de la salle en réussissant les défis sur ton chemin."
myText[3] = "Après cet examen, tu sera considérée comme un maître assassin dans le village."
myText[4] = "Tu pourras participer aux différentes excursions que le village entreprend en faisant partie de l'élite des assassins."
myText[5] = "Pour l'instant, contente toi de passer la première partie de l'examen."
myText[6] = "Celle-ci consiste seulement à te déplacer entre les tables. Rien de plus simple."
myText[7] = "Utilise les flèches de ton clavier pour te déplacer."
myText[8] = "Est-ce que c'est bien compris?."
myText[9] = "Oui!"

//les différentes faces que la personne qui parle va avoir mais dans ce cas, il y aura tout le temps la meme face
myFaces[0] = Spr_SenseiFaceNormal;
myFaces[1] = Spr_SenseiFaceNormal;
myFaces[2] = Spr_SenseiFaceNormal;
myFaces[3] = Spr_SenseiFaceNormal;
myFaces[4] = Spr_SenseiFaceNormal;
myFaces[5] = Spr_SenseiFaceNormal;
myFaces[6] = Spr_SenseiFaceNormal;
myFaces[7] = Spr_SenseiFaceNormal;
myFaces[8] = Spr_SenseiFaceNormal;
myFaces[9] = Spr_PurakushisuFaceNormal;