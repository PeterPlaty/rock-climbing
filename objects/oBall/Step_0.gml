/// @description Check if thrown

// Note: INPUT.hold is held down since creation (see oPlayer Step)
if(keyboard_check_released(INPUT.hold)){
	
	if(keyboard_check(INPUT.down)){
		// Place
		var _x=oPlayer.x+34*sign(oPlayer.dx);
		var _y=oPlayer.y
		instance_create_layer(_x,_y,"Instances",oBallJump)
	} else {
		// Throw
		var _ball=instance_create_layer(x,y,"Instances",oBallGravity);
		_ball.dx=5*sign(oPlayer.dx);
		_ball.dy=3;
	}
	
	instance_destroy();
}