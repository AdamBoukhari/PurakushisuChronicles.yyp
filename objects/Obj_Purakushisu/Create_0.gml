/// @description Variables
// Vous pouvez écrire votre code dans cet éditeur

walkSpeed = 2;
isUp=false;
isDown=false;
isLeft=false;
isRight=false;

//pour la direction attaques
watchingUp=false;
watchingDown = true;
watchingLeft = false;
watchingRight = false;


//stats
hp = 6;
dmg = 2;
maxHp=6;
money=0;

//dash
dashTotalDuration = 20;
dashDuration = dashTotalDuration;
dashing = false;
dashSpeed = 0;
dir=270;

state = PLAYER_STATE.Free;
hitByAttack = ds_list_create();

//Timerpendant qu'elle tombe
fallingCooldown=90;
//Pour savoir où elle spawn pour chaque salles
xSpawn=x
ySpawn=y

xHole=x
yHole=y;


//Pour arrêter les déplacements
pause=false


//pour pas spammer les attaques enemies
invincible=false;
enemyKnockback=noone;
timerKnockback= 0;
timerInvincible = 0;
clignotement=10
dead=false;/*le timer pour qu'elle clignote quand elle est invincible*/



//pour saver la partie quand le joueur meurt.
last_saved_x=96;
last_saved_y=128;
last_room=rm_Dojo;

//camera
cameraDecalX=0
cameraDecalY=0
lastCutsceneCameraPosX=0;
lastCutsceneCameraPosY=0;

//pour le lvl transition;
transitionInst=noone;

//gérer le hud
Hud=true;

//état du joueur
enum PLAYER_STATE
{
	Free,
	Slashing,
	Falling
}