/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(Obj_Purakushisu.pause=false){
	if(numberOfJumps>=0){
		if(TimerJump==0){
			TimerJump=MAX_TIMER_JUMP;
			TargetX=Obj_Purakushisu.x;
			TargetY=Obj_Purakushisu.y;
			mySpeed=sqrt(sqr(TargetX-x)+sqr(TargetY-y))/MAX_TIMER_JUMP;
			sprite_index=Spr_KingSlimeJump
			numberOfJumps-=1;
			audio_play_sound(Snd_KingSlimeJumping,1,false);
		}else{
			TimerJump-=1;
		}
		if(TimerJump==30){
			audio_play_sound(snd_KingSlimeFalled,1,false);
		}
		mp_potential_step(TargetX, TargetY, mySpeed, false)
	}else{
		if(sprite_index!=Spr_KingSlimeIddle){
			sprite_index=Spr_KingSlimeIddle;
		}
		if(jumpingCooldown==0){
			numberOfJumps=MAX_NUMBER_OF_JUMPS;
			jumpingCooldown=room_speed*1;
			TimerJump=0;
		}else{
			jumpingCooldown-=1;
		}
	}
	
	
	if(place_meeting(x,y,Obj_Purakushisu)){
		if(hp>0){
			TakeDamage(self, 2);
		}
	}

	if(timerInvincible>0){
		if(!isHit&&!alreadyHitted){
			isHit=true;
			alreadyHitted=true;
			alarm[0]=3;
		}
		invincible=true;
		timerInvincible-=1;
	}else{
		image_blend=-1;
		invincible=false
		alreadyHitted=false;
	}
	if(hp<=0){
		instance_destroy(myShadow);
		audio_stop_all();
		//Les noms des différentes personnes si plusieurs personnes parlent
		myNames[0] = "Dakaku"
		myNames[1] = "Purakushisu"
		myNames[2] = "Dakaku"
		myNames[3] = "Dakaku"


		//Les differents dialogues que la personne va dire
		myText[0] = "Tu, tu l'a batu?"
		myText[1] = "Bien sur, pourquoi? Avais-tu peur?"
		myText[2] = "Bien sur que non, rien ne me fait peur. Je suis le grand Dakaku. Je vais y aller, tu me rejoindra sur la route. "
		myText[3] = "Ce n'est pas que j'ai peur mais voilà. Je prend mes précautions."


		//les différentes faces que la personne qui parle va avoir mais dans ce cas, il y aura tout le temps la meme face
		myFaces[0] = Spr_DakakuFaceScared;
		myFaces[1] = Spr_PurakushisuFaceNormal;
		myFaces[2] = Spr_DakakuFaceNormal;
		myFaces[3] = Spr_DakakuFaceNormal;
		
		
		//Les noms des différentes personnes si plusieurs personnes parlent
		myNames2[0] = "Purakushisu"
		


		//Les differents dialogues que la personne va dire
		myText2[0] = "Oh la la, Dakaku... tu n'a pas changé."
		


		//les différentes faces que la personne qui parle va avoir mais dans ce cas, il y aura tout le temps la meme face
		myFaces2[0] = Spr_PurakushisuFaceNormal;
		
		
		myX=x;
		myY=y;
		
		t_scene_info=[
			//[cutscene_change_variable,Obj_Purakushisu, "pause", true],
			[cutscene_move_character, Obj_KingSlime,myX,myY-50,true,2,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY+50,true,2,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY-50,true,2,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY+50,true,2,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY-50,true,4,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY+50,true,4,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY-50,true,4,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY+50,true,4,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY-50,true,6,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY+50,true,6,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY-50,true,6,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY+50,true,6,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY-50,true,8,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY+50,true,8,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY-50,true,8,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY+50,true,8,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY-50,true,10,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY+50,true,10,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY-50,true,10,false],
			[cutscene_move_character, Obj_KingSlime,myX,myY+50,true,10,false],
			[cutscene_move_character, Obj_KingSlime,myX,-64,true,10,false],
			[cutscene_instances_destroy,Obj_KingSlime],
			
			[cutscene_wait,2],
			
			[cutscene_create_dialogue, myNames,myText,myFaces],
			
			[cutscene_change_sprite, Obj_DakakuKingSlimeDO_NOTHING,Spr_DakakuWalkingDown],
			[cutscene_move_character,Obj_DakakuKingSlimeDO_NOTHING,176,320,true,5,false],
			[cutscene_instances_destroy,Obj_DakakuKingSlimeDO_NOTHING],
			[cutscene_instances_destroy,Obj_Box],
			[cutscene_play_sound,Snd_WoodBreak,1,false],
			[cutscene_instances_create,144,319,"Collisions",Obj_Transition],
			[cutscene_instances_create,176,319,"Collisions",Obj_Transition],
			[cutscene_change_variable,Obj_Transition,"targetRoom",rm_RoadKingSlimeGurovinu1],
			[cutscene_change_variable,Obj_Transition,"targetX",508],
			[cutscene_change_variable,Obj_Transition,"targetY",12],
			

			
			[cutscene_create_dialogue, myNames2,myText2,myFaces2],
			[cutscene_play_sound,Snd_Forest,1,true],
			//[cutscene_change_variable,Obj_Purakushisu, "pause", false],
		]
		if(!instance_exists(Obj_CutScene)){
			cutscene_create(t_scene_info);
			
		}
	}
}
if(hp==51){
	MAX_NUMBER_OF_JUMPS=3;
}
if(hp==25){
	MAX_NUMBER_OF_JUMPS=6;
}