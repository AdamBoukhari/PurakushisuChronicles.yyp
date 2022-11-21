//Les noms des différentes personnes si plusieurs personnes parlent
myNames[0] = "Dakaku"


//Les differents dialogues que la personne va dire
myText[0] = "Purakushisu! Attention dèrrière toi!"


//les différentes faces que la personne qui parle va avoir mais dans ce cas, il y aura tout le temps la meme face
myFaces[0] = Spr_DakakuFaceScared;





//Les noms des différentes personnes si plusieurs personnes parlent
myNames2[0] = "Dakaku"


//Les differents dialogues que la personne va dire
myText2[0] = "Fais attention! Il est extrêmement dangereux!"


//les différentes faces que la personne qui parle va avoir mais dans ce cas, il y aura tout le temps la meme face
myFaces2[0] = Spr_DakakuFaceScared;


t_scene_info=[
	//[cutscene_change_variable,Obj_Purakushisu, "pause", true],
	[cutscene_change_sprite, Obj_Purakushisu,Spr_PurakushisuIddleUp],
	[cutscene_instances_create,144,288,"Instances",Obj_Box],
	[cutscene_instances_create,176,288,"Instances",Obj_Box],
	[cutscene_create_dialogue, myNames,myText,myFaces],
	[cutscene_change_sprite, Obj_Purakushisu,Spr_PurakushisuIddleDown],
	[cutscene_instances_create,176,304,"Boss",Obj_KingSlime],
	[cutscene_move_character, Obj_KingSlime,176,192,true,1.5,false],
	[cutscene_create_dialogue, myNames2,myText2,myFaces2],
	[cutscene_play_sound,Snd_KingSlimeBossMusic,1,true]
	//[cutscene_change_variable,Obj_Purakushisu, "pause", false],
]