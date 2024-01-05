/// @description Set motion


// Horizontal
var hInput = keyboard_check(vk_right) - keyboard_check(vk_left)

if (hInput != 0) {
	// Move horizontally
	dx = median(-maxH, dx+hInput*accel, maxH);
} else dx *= 0.75;

// Vertical
dy += grav*0.85;

// Jump
if (keyboard_check_pressed(vk_space) && onGround){
	
	// Check if not stuck
	if !(place_meeting(x, y, oWall)){
		// Jump	
		dy = -7;
	
		// Update state
		onGround = false;
	}
}



if (dy > maxV) dy = maxV;