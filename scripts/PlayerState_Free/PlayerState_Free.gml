function PlayerState_Free() {
	// Initiations
	hspeed = 0;
	vspeed = 0;
	walkSpeed = 2;
	if(sprite_index==Spr_PurakushisuFalling){
		sprite_index=Spr_PurakushisuIddleDown;
	}

	//vérifier si le joueur tombe dans le trou
	if(dashing==false&&place_meeting(x,y,Vide)){
		state=PLAYER_STATE.Falling;
	}else{
		if(!place_meeting(x+5,y+5,Vide)&&!place_meeting(x+5,y+5,Vide)&&!place_meeting(x+5,y-5,Vide)&&!place_meeting(x-5,y+5,Vide)){
			xHole=x
			yHole=y;
		}
	}


	timerInvincible-=1;
	if(timerInvincible<=0){
		invincible=false;
	}


	if(dead!=true){
		timerKnockback-=1;
		if(timerKnockback>0){
			mp_potential_step(enemyKnockback.x, enemyKnockback.y, -5, false);
			if(place_meeting(x,y,Obj_Collision)){
				mp_potential_step(enemyKnockback.x, enemyKnockback.y, 5, false);
			}
		}else{
			enemyKnockback=noone;
		}
	}

	if(!Obj_Purakushisu.pause&&Obj_Purakushisu.timerKnockback<=0){
	
		//Collisions;
	
			//Transisions de la room
		transitionInst=instance_place(x,y,Obj_Transition);
		if(transitionInst!=noone){
			with(FadeInFadeOut){
				//je sais qu'ici je ne respecte pas les lois de programmation mais je suis oblig/]e
				spawnRoom=Obj_Purakushisu.transitionInst.targetRoom;
				spawnX=Obj_Purakushisu.transitionInst.targetX;
				spawnY=Obj_Purakushisu.transitionInst.targetY;
				doTransition=true;
			}
		}
	

	
	
		// Deplacements
	
	
		if(sprint && !dashing)
		{
			walkSpeed*=1.5;	
		}

		if(up)
		{
			if(left || right)
			{
			    vspeed += -walkSpeed/sqrt(2);
			}
			else
			{
				vspeed += -walkSpeed;
			}
			if(place_meeting(x, y-walkSpeed, Obj_Collision))
			{
				vspeed=0;
			}
		}


		if(down)
		{
			if(left || right)
			{
			    vspeed += walkSpeed/sqrt(2);
			}
			else
			{
				vspeed += walkSpeed;
			}
			if(place_meeting(x, y+walkSpeed, Obj_Collision))
			{
				vspeed=0;
			}
		}

		if(left)
		{
			if(up || down)
			{
			    hspeed += -walkSpeed/sqrt(2);
			}
			else
			{
				hspeed += -walkSpeed;
			}
			if(place_meeting(x-walkSpeed, y, Obj_Collision))
			{
				hspeed=0;
			}
		}

		if(right)
		{
			if(up || down)
			{
			    hspeed += walkSpeed/sqrt(2);
			}
			else
			{
				hspeed += walkSpeed;
			}
			if(place_meeting(x+walkSpeed, y, Obj_Collision))
			{
				hspeed=0;
			}
		}



		if(right && isLeft == false)
		{
			isRight=true;
		}
		if(left && isUp == false)
		{
			isLeft=true;
		}

		if(left && isUp)
		{
			isLeft = true;
			isUp = false;
		}

		if(up && isDown == false)
		{
			isUp=true;
		}

		if(down && isUp == false)
		{
			isDown=true;
		}

		if(right && left && down)
		{
			isRight=false;
			isLeft=false;
			isDown=true;
		}

		if(right && left && up)
		{
			isRight=false;
			isLeft=false;
			isUp=true;
		}

		if(up && down && right)
		{
			isUp=false;
			isDown=false;
			isRight=true;
		}
		if(up && down && left)
		{
			isUp=false;
			isDown=false;
			isLeft=true;
		}

		//Pause menu
		if(escapedPauseTimer>0){
			escapedPauseTimer-=1;
		}else{
			if(pauseKey){
				pause=true;
				instance_create_layer(x,y,"Instances",Obj_Pause)
			}
		}
	
		//Attack
		if(attack&&!dashing)
		{
			typeSon=random(3);
			audio_play_sound(Snd_Slash,1,false);
			state = PLAYER_STATE.Slashing;	
		}




		// Dash

		if(dash && dashDuration == dashTotalDuration)
		{
			audio_play_sound(Snd_Dash,1, false)
			dashing = true;
	
			dir = direction;
			dashSpeed = walkSpeed*3;
			if(sprite_index == Spr_PurakushisuIddleDown)
				dir = 270;
			if(sprite_index == Spr_PurakushisuIddleLeft)
				dir = 180;
			if(sprite_index == Spr_PurakushisuIddleUp)
				dir = 90;
			if(sprite_index == Spr_PurakushisuIddleRight)
				dir = 0;
		}

		if(dir == 0 && place_meeting(x+dashSpeed, y, Obj_Collision))
		dashing = false;

		if(dir > 0 && dir < 90 && place_meeting(x+dashSpeed, y-dashSpeed, Obj_Collision))
		dashing = false;

		if(dir == 90 && place_meeting(x, y-dashSpeed, Obj_Collision))
		dashing = false;

		if(dir > 90 && dir < 180 && place_meeting(x-dashSpeed, y-dashSpeed, Obj_Collision))
		dashing = false;

		if(dir == 180 && place_meeting(x-dashSpeed, y, Obj_Collision))
		dashing = false;

		if(dir > 180 && dir < 270 && place_meeting(x-dashSpeed, y+dashSpeed, Obj_Collision))
		dashing = false;

		if(dir ==270 && place_meeting(x, y+dashSpeed, Obj_Collision))
		dashing = false;

		if(dir > 270 && place_meeting(x+dashSpeed, y+dashSpeed, Obj_Collision))
		dashing = false;


		if(dashDuration == 0)
			dashing = false;
	
		if(dashing == false)
			dashDuration = dashTotalDuration;
	
		if(dashing)
		{
			Dash(dir, dashSpeed);
			dashSpeed-=dashSpeed/dashTotalDuration;
			dashDuration--;
		}

		// Detect if idle

		idle = false;	
		if(hspeed = 0 && vspeed = 0)
		{
			idle = true;
		}

		// Animations
		if(isUp && !dashing)
		{
			sprite_index = Spr_PurakushisuRunningUp;
			if(idle)
			{
				sprite_index = Spr_PurakushisuIddleUp;
			}
			watchingUp=true;
			watchingDown=false;
			watchingLeft = false;
			watchingRight= false;
		}
		else if(isUp && dashing)
		{
			sprite_index = Spr_PurakushisuDashingUp;
		}


		if(isDown && !dashing)
		{
			sprite_index = Spr_PurakushisuRunningDown;
			if(idle)
			{
				sprite_index = Spr_PurakushisuIddleDown;
			}
			watchingUp=false;
			watchingDown=true;
			watchingLeft = false;
			watchingRight= false;
		}
		else if(isDown && dashing)
		{
			sprite_index = Spr_PurakushisuDashingDown;
		}

		if(isLeft && !dashing)
		{
			sprite_index = Spr_PurakushisuRunningLeft;
			if(idle)
			{
				sprite_index = Spr_PurakushisuIddleLeft;
			}
			watchingUp=false;
			watchingDown=false;
			watchingLeft = true;
			watchingRight= false;
		}
		else if(isLeft && dashing)
		{
			sprite_index = Spr_PurakushisuDashingLeft;
		}

		if(isRight && !dashing)
		{
			sprite_index = Spr_PurakushisuRunningRight;
			if(idle)
			{
				sprite_index = Spr_PurakushisuIddleRight;
			}
			watchingUp=false;
			watchingDown=false;
			watchingLeft = false;
			watchingRight= true;
		}
		else if(isRight && dashing)
		{
			sprite_index = Spr_PurakushisuDashingRight;
		}


		// Keys released
		if(!down && !dashing)
		{
			isDown=false;
		}
		if(!up && !dashing)
		{
			isUp=false;	
		}
		if(!left && !dashing)
		{
			isLeft=false;
		}
		if(!right && !dashing)
		{
			isRight=false;
		}
	}else{
		hspeed=0;
		vspeed=0;
	}







}
