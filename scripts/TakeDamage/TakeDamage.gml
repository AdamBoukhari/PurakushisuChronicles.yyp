/// @description DealDamage(Enemy, Damage)
/// @param Enemy
/// @param Damage
function TakeDamage(argument0, argument1) {
	if(Obj_Purakushisu.invincible==false&&Obj_Purakushisu.hp>0){
		Obj_Purakushisu.hp -= argument1;
		Obj_Purakushisu.invincible=true;
		Obj_Purakushisu.timerInvincible = 120;
		Obj_Purakushisu.timerKnockback= 10;
		Obj_Purakushisu.enemyKnockback=argument0;
		Obj_Purakushisu.visible=false;
		audio_play_sound(Snd_Hit, 10, false);
	}


}
