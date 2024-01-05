/// @description Check if thrown

// Note: INPUT.hold is held down since creation (see oPlayer Step)
if(keyboard_check_released(INPUT.hold)){
	var _ball=instance_create_layer(x,y,"Instances",oBallGravity);
	_ball.dx=4;
	_ball.dy=4;
	
	instance_destroy();
}