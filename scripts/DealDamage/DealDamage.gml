/// @description DealDamage(target, amount)
/// @param target
/// @param amount
function DealDamage(argument0, argument1) {
	if(argument0.invincible==false&&argument0.hp>0){
		argument0.hp -= argument1;
		invincible = true;
		argument0.timerInvincible = 20;
		argument0.moving_speed=-3; 
		argument0.timerKnockback= 20;
		audio_play_sound(Snd_Hit, 10, false);
	}



}
