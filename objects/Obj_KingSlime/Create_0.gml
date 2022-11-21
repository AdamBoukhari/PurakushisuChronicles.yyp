/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
numberOfJumps=1;
MAX_NUMBER_OF_JUMPS=1;
hp=75;
invincible = false;
timerInvincible = 0;
isHit=false;
alreadyHitted=false;


//ces 2 las servent a rien c'est juste pour faire fonctionner le script DealDammage
moving_speed=-3; 
timerKnockback= 20;

jumping=false
jumpingCooldown=room_speed*1;

myShadow=instance_create_depth(x,y,depth+1,Obj_KingSlimeShadow)

MAX_TIMER_JUMP=90;
TimerJump=0;
TargetX=0;
TargetY=0;
