/// @description Set motion

// Horizontal
var hInput = keyboard_check(right) - keyboard_check(left)

if (hInput != 0) {
	// Move horizontally
	dx = median(-maxH, dx+hInput*accel, maxH);
} else dx *= 0.75;

// Vertical
dy += grav*0.85;

if (keyboard_check_released(jump) or not keyboard_check(jump)){
	// Increase fall speed if jump is held
	dy += grav;
}

if (keyboard_check_pressed(jump) && onGround){
	
	// Check if not stuck
	if not ((place_meeting(x, y, oWallA) and color==1) or (place_meeting(x, y, oWallB) and color==0)){
		// Jump	
		dy = -7;
	
		// Update state
		onGround = false;
		color = (color+1)%2;
	}
}



if (dy > maxV) dy = maxV;


