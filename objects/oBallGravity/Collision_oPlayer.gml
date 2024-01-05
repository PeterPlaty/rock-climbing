/// @description Boost up

if(oPlayer.y<y-16 and oPlayer.dy>0){	// if player is above and is falling
	oPlayer.dy=-10;
	oPlayer.onGround=false;
	
	instance_destroy();
}