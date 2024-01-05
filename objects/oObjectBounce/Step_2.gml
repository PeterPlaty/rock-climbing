/// @description Bouncy collisions

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
		_x = xCollisionID.x + 16;
	} else if (dx > 0) {
		// Is moving right
		_x = xCollisionID.x - 16;
	}
	
	dx *= -0.8;
}

if (yCollisionID != noone) {
	// Vertical
	if (dy < 0) {
		// Is moving up
		_y = yCollisionID.y + 16;
	} else if (dy >= 0) {
		// Is moving down
		_y = yCollisionID.y - 16;
		onGround = true;
	}
	
	dy *= -0.6;
	
	// "Friction" workaround
	dx=lerp(dx,0,0.1)
	
	// Don't vibrate
	if (abs(dx)<=0.01) {
		// Stop movement
		dx=0;
		dy=0;
		
		// Set up destruction
		if(alarm[0]<0){
			alarm[0]=30*3
		}
	}
} else onGround = false;

// Apply position
x = _x;
y = _y;

