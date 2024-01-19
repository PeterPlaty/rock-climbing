/// @description Get Inputs



// Inherit the parent event
event_inherited();

// -- INPUT DETECTION --

#region Movement
// Horizontal
var hInput = keyboard_check(INPUT.right) - keyboard_check(INPUT.left)

if (hInput != 0) {
	// Move horizontally
	dx = median(-maxH, dx+hInput*accel, maxH);
} else dx *= 0.75;

// Jump
if (keyboard_check_pressed(INPUT.jump) && onGround){
	
	// Check if not stuck
	if !(place_meeting(x, y, oWall)){
		// Jump	
		dy = -7;
	
		// Update state
		onGround = false;
	}
}
#endregion

// Change facing direction
if (sign(dx)!=0) facing=sign(dx);

#region Ball

// Handle timer
if (keyboard_check_pressed(INPUT.hold)){ alarm[0]=30; }
if (keyboard_check_released(INPUT.hold)){ alarm[0]=-1; }

// Handle stars
if(alarm[0]%10==0){
	for(var i=0; i<8; i++){
		var _x = x;
		var _y = y-32;
		
		var _star = instance_create_layer(_x,_y,"Instances",oStar);
		_star.direction=i*45;
		_star.speed=3
	}
}
#endregion





