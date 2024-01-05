/// @description Apply motion

//// Get wall collision based on color
//if (prevColor == color) {
//	// Color got changed to "color"
//	// Push player out of walls of said color
//	var i = 0;
	
//	var wall = (color==0) ? oWallA : oWallB;
	
//	while place_meeting(x, y, wall) {
//		i+=1;
		
//		if !place_meeting(x+i, y, wall) {
//			x = x+i;
//			break;
//		} 
		
//		if !place_meeting(x-i, y, wall) {
//			x = x-i;
//			break;
//		}
//	}
//}


// Collision check
var _x = x+dx;
var _y = y+dy;


// -- COLLISIONS --
var xCollisionID = noone;
var yCollisionID = noone;

if (color == 0) {
	xCollisionID = instance_place(_x, y, oWallA);
	yCollisionID = instance_place(x, _y, oWallA);
} else {
	xCollisionID = instance_place(_x, y, oWallB);
	yCollisionID = instance_place(x, _y, oWallB);
}

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
	
	dx = 0;
}

if (yCollisionID != noone) {
	// Vertical
	if (dy < 0) {
		// Is moving up
		_y = yCollisionID.y + 16;
	} else if (dy > 0) {
		// Is moving down
		_y = yCollisionID.y - 16;
		onGround = true;
	}
	
	dy = 0;
} else onGround = false;



// Room boundaries
if (_x <= 0) _x = 0;
if (_x >= 640-8) _x = 640-8;


if (_y >= 300) {
	_y = 300;
	onGround = true;
}

// Apply position
x = _x;
y = _y;