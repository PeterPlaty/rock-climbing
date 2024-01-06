/// @description Boost up

if(oPlayer.bbox_bottom<y and oPlayer.dy>0){	// if player is above and is falling
	oPlayer.dy=-10;
	oPlayer.onGround=false;
	
	instance_destroy();
}