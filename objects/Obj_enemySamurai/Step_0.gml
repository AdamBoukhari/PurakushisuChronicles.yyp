/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(aggro){
	if(vspd<0){
		if(sprite_index!=Spr_SamuraiRunningUp){
			sprite_index=Spr_SamuraiRunningUp
		}
	}else{
		sprite_index=Spr_SamuraiRunningDown
	}
}

if(hp<=0){
  sprite_index = Spr_SamuraiDead;
  deathLatencyTimer-=1;
  if(deathLatencyTimer<=0){
	instance_destroy(self)
  }
}

//cooldown des attaques du joueur
if(invincible==true){
	if(!isHit&&!alreadyHitted){
		isHit=true;
		alreadyHitted=true;
		alarm[0]=3;
	}
	timerInvincible-=1;
	if(timerInvincible==0){
		invincible=false;
	}
}else{
	alreadyHitted=false;
}

if(Obj_Purakushisu.x>x-watchingRange && Obj_Purakushisu.x<x+watchingRange&&Obj_Purakushisu.y>y-watchingRange&&Obj_Purakushisu.y<y+watchingRange){
	aggro=true;
}

//les déplacements et le knockback
if(!Obj_Purakushisu.pause&&aggro==true){
	if(hp>0){
		timerKnockback-=1;
		if(timerKnockback>=0){
			mp_potential_step(Obj_Purakushisu.x, Obj_Purakushisu.y, -3, true);
		}else{
			mp_potential_step(Obj_Purakushisu.x, Obj_Purakushisu.y, 1.5, true);
		}
	}
}


//toucher le joueur
if(aggro==true){
	if(place_meeting(x+1,y+1,Obj_Purakushisu)||place_meeting(x-1,y-1,Obj_Purakushisu)){
		if(hp>0){
			if(Obj_Purakushisu.state!=PLAYER_STATE.Falling&&!Obj_Purakushisu.dashing){
				TakeDamage(self, 1)
			}
		}
	}
}




//get speed
hspd=x-lastXPosition;
vspd=y-lastYPosition;
lastXPosition=x;
lastYPosition=y;