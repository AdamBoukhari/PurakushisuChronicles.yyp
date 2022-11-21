function PlayerState_Slashing() {
	hspeed = 0;
	vspeed = 0; 




	//Begining of the attack
	if(watchingRight)
	{
		sprite_index = Spr_PurakushisuAttackingRight;
		//image_index = 0;
		ds_list_clear(hitByAttack);
	}
	else if(watchingLeft)
	{
		sprite_index = Spr_PurakushisuAttackingLeft;
		//image_index = 0;
		ds_list_clear(hitByAttack);
	}
	else if(watchingUp)
	{
		sprite_index = Spr_PurakushisuAttackingUp;
		//image_index = 0;
		ds_list_clear(hitByAttack);
	}
	else if(watchingDown)
	{
		sprite_index = Spr_PurakushisuAttackingDown;
		//image_index = 0;
		ds_list_clear(hitByAttack);
	}

	//hitboxes
	if(watchingRight)
	{
		mask_index = Spr_AttackHitboxRight;
	}
	else if(watchingLeft)
	{
		mask_index = Spr_AttackHitboxLeft;
	}
	else if(watchingUp)
	{
		mask_index = Spr_AttackHitboxUp;
	}
	else if(watchingDown)
	{
		mask_index = Spr_AttackHitboxDown;
	}


	//Dommages pour les énemis slimes
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,Obj_enemySlime,hitByAttackNow, false);
	if(hits>0){
		for(var i = 0; i<hits; i++)
		{
			var hitID = hitByAttackNow[| i]; 
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID)
				with(hitID)
				{
					DealDamage(hitID, Obj_Purakushisu.dmg)
				}
			}	
		}	
	}
	ds_list_destroy(hitByAttackNow);


	//Dommages pour les énemis samurais
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,Obj_enemySamurai,hitByAttackNow, false);
	if(hits>0){
		for(var i = 0; i<hits; i++)
		{
			var hitID = hitByAttackNow[| i]; 
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID)
				with(hitID)
				{
					DealDamage(hitID, Obj_Purakushisu.dmg)
				}
			}	
		}	
	}
	ds_list_destroy(hitByAttackNow);

	//Dommages pour le king slime 
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,Obj_KingSlime,hitByAttackNow, false);
	if(hits>0){
		for(var i = 0; i<hits; i++)
		{
			var hitID = hitByAttackNow[| i]; 
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID)
				with(hitID)
				{
					DealDamage(hitID, Obj_Purakushisu.dmg)
				}
			}	
		}	
	}
	ds_list_destroy(hitByAttackNow);

	//Dommages pour les Tonneau
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,Obj_Tonneau,hitByAttackNow, false);
	if(hits>0){
		for(var i = 0; i<hits; i++)
		{
			var hitID = hitByAttackNow[| i]; 
			if(ds_list_find_index(hitByAttack,hitID)==-1){
				ds_list_add(hitByAttack,hitID)
				with(hitID)
				{
					DestroyTonneau(hitID);
				}
			}	
		}	
	}

	ds_list_destroy(hitByAttackNow);
	if(watchingRight)
	{
		mask_index = Spr_PurakushisuIddleRight;
	}
	else if(watchingLeft)
	{
		mask_index = Spr_PurakushisuIddleLeft;
	}
	else if(watchingUp)
	{
		mask_index =  Spr_PurakushisuIddleUp;
	}
	else if(watchingDown)
	{
		mask_index = Spr_PurakushisuIddleDown;
	}

	if(VerifyIfAnimationEnds())
	{
		if(watchingRight)
		{
			sprite_index = Spr_PurakushisuIddleRight;
		}
		else if(watchingLeft)
		{
			sprite_index = Spr_PurakushisuIddleLeft;
		}
		else if(watchingUp)
		{
			sprite_index =  Spr_PurakushisuIddleUp;
		}
		else if(watchingDown)
		{
			sprite_index = Spr_PurakushisuIddleDown;
		}
		state = PLAYER_STATE.Free;
	}


}
