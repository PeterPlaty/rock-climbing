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

#region Ball
if (keyboard_check_pressed(INPUT.hold)){
	instance_create_layer(x,y-32,"Instances",oBall)
}
#endregion