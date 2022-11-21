function PlayerState_Falling() {
	//savoir il tombe dans quel trou
	inst = instance_place(x, y, Vide);
	hspeed=0;
	vspeed=0;
	draw_text(x, y, inst);

	//la placer dans le trou et le if c'est pour corriger un bug parce que de temps en temps, inst était negatif alors qu'il devrait prendre un id du genre 1110123 lorsque le joueur dash et il arrive sur le dernier pixel de collision.
	if(inst>0){
		x=inst.x;
		y=inst.y;
		//animation
		sprite_index=Spr_PurakushisuFalling;
	}else{
		state=PLAYER_STATE.Free;
	}








}
