/// @description Deplacements
// Vous pouvez écrire votre code dans cet éditeur



// Rester dans la room
x = max(x, 0);
x = min(x, room_width);
y = max(y, 0);
y = min(y, room_height);



// Touches
KEY_UP = vk_up;
KEY_DOWN = vk_down;
KEY_LEFT = vk_left;
KEY_RIGHT = vk_right;
KEY_SPRINT =  vk_shift;
KEY_DASH = vk_space;
KEY_ESC= vk_escape;

// KEY_ATTACK = ord('Z'); à refaire

up = keyboard_check(KEY_UP);
down = keyboard_check(KEY_DOWN);
left = keyboard_check(KEY_LEFT);
right = keyboard_check(KEY_RIGHT);

upRlsd = keyboard_check_released(KEY_UP);
downRlsd = keyboard_check_released(KEY_DOWN);
leftRlsd = keyboard_check_released(KEY_LEFT);
rightRlsd = keyboard_check_released(KEY_RIGHT);

upPressed = keyboard_check_pressed(KEY_UP);
downPressed = keyboard_check_pressed(KEY_DOWN);
leftPressed = keyboard_check_pressed(KEY_LEFT);
rightPressed = keyboard_check_pressed(KEY_RIGHT);

sprint = keyboard_check(KEY_SPRINT);
dash = keyboard_check_pressed(KEY_DASH);
attack = keyboard_check_pressed(/*KEY_ATTACK*/ ord("Z"));

pauseKey=keyboard_check_pressed(KEY_ESC)
escapedPauseTimer=0/*J'ai créé ça pour retirer un bug qui réaffichais le menu paus après d'avoir appuyé sur escape pour quiter*/
if(hp<0){
	hp=0;
}

//gérer quand le joueur tombe
if(state==PLAYER_STATE.Falling){
	fallingCooldown=fallingCooldown-1;
	if(fallingCooldown==0){
		fallingCooldown=90
		x=xHole;
		y=yHole;
		state=PLAYER_STATE.Free
		hp-=1;
		invincible=true;
		timerInvincible = 60;
		visible=false;
	}
}

//clignotement quand le joueur est invincible
if(invincible){
	clignotement-=1
	if(clignotement==0){
		clignotement=10;
		if(visible){
			visible=false;
		}else{
			visible=true;
		}
	}
}else{
	clignotement=20;
	visible=true;
}






//Max vie
if(hp>maxHp){
	hp=maxHp
}

//mort
if(hp<=0&&room!=rm_gameOver){
	dead=true
	room_goto(rm_gameOver);
}





switch(state){
	case PLAYER_STATE.Free:
		PlayerState_Free();
		break;
	case PLAYER_STATE.Slashing:
		PlayerState_Slashing();
		break;
	case PLAYER_STATE.Falling:
		PlayerState_Falling()
		break;
}





