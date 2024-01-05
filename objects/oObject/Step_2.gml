/// @description Perfect collisions

// Collision check
var _x = x+dx;
var _y = y+dy;

var xCollisionID = instance_place(_x, y, oWall);
var yCollisionID = instance_place(x, _y, oWall);

// Apply wall collision (if it exists)
if (xCollisionID != noone) {
	// Horizontal
	if (dx < 0) {
		// Is moving left
		_x = xCollisionID.x + xCollisionID.sprite_width + 16;
	} else if (dx > 0) {
		// Is moving right
		_x = xCollisionID.x - 16;
	}
	
	dx = 0;
}

if (yCollisionID != noone) {
	// Vertical
	if (dy < 0) {
		// Is moving up
		_y = yCollisionID.y + yCollisionID.sprite_height + 16;
	} else if (dy >= 0) {
		// Is moving down
		_y = yCollisionID.y - 16;
		onGround = true;
	}
	
	dy = grav;
	/*
		Note: I did this (dy=grav) instead of dy=0 to prevent onGround state flickering.
		I have a vague idea of why it works (which is: this way, y+dy is an actual collision the next frame),
		but still 0.1 doesn't work and I don't want to think if there's a better solution.
		
		Deal with it, cry about it
	*/
} else onGround = false;

// Apply position
x = _x;
y = _y;