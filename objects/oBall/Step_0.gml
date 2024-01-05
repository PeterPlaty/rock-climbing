/// @description Check if thrown

// Note: INPUT.hold is held down since creation (see oPlayer Step)
if(keyboard_check_released(INPUT.hold)){	
	var _ball=instance_create_layer(x,y,"Instances",oBallGravity);
	_ball.dx=5*sign(oPlayer.dx);
	_ball.dy=3;
	
	instance_destroy();
}