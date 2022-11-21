

//Les noms des différentes personnes si plusieurs personnes parlent
myNames[0] = "Purakushisu"
myNames[1] = "Dairoku"
myNames[2] = "Dairoku"
myNames[3] = "Purakushisu"
myNames[4] = "Dairoku"
myNames[5] = "Dairoku"
myNames[6] = "Purakushisu"


//Les differents dialogues que la personne va dire
myText[0] = "Dairoku! qu'est ce qu'il se passe!"
myText[1] = "J'ai bien peur que le village se fasse attaque. (no shit sherlock)"
myText[2] = "Tu as retrouvé Dakaku?"
myText[3] = "Oui. Il est en sécurité. Enfin je crois. Mais nous en avons profité pour tuer le roi des slimes."
myText[4] = "Très bien! Mais je crois qu'en ce moment, nous avons d'autres priorités."
myText[5] = "Retourne au village. Je te rattraperai. "
myText[6] = "Ok!"


//les différentes faces que la personne qui parle va avoir mais dans ce cas, il y aura tout le temps la meme face
myFaces[0] = Spr_PurakushisuFaceBad;
myFaces[1] = Spr_DairokuFaceBad;
myFaces[2] = Spr_DairokuFaceBad;
myFaces[3] = Spr_PurakushisuFaceBad;
myFaces[4] = Spr_DairokuFaceBad;
myFaces[5] = Spr_DairokuFaceBad;
myFaces[6] = Spr_PurakushisuFaceBad;



t_scene_info=[
	//[cutscene_change_variable,Obj_Purakushisu, "pause", true],
	[cutscene_stop_all_sounds],
	[cutscene_change_sprite,Obj_Purakushisu, Spr_PurakushisuIddleLeft],
	[cutscene_play_sound,Snd_Notice,5,false],
	[cutscene_wait, 1],
	[cutscene_play_sound, Snd_VillageAttacked,1,true],
	
	[cutscene_change_sprite,Obj_Purakushisu, Spr_PurakushisuRunningUp],
	[cutscene_move_character,Obj_Purakushisu,552,320,true, 0.5,false],
	[cutscene_change_sprite,Obj_Purakushisu, Spr_PurakushisuIddleUp],
	
	[cutscene_wait, 1],
	[cutscene_create_dialogue,myNames,myText,myFaces],
	[cutscene_stop_all_sounds],
	[cutscene_play_sound, Snd_RoadToVillage,1,true],
	//[cutscene_change_variable,Obj_Purakushisu, "pause", false],
]


