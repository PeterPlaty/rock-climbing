/// @description Perfect collisions

/*
// Horizontal
for (var i=0; i<=floor(dx); i++) {
    if(!place_meeting(x+(i*sign(dx)),y,oWall)){
		x+=sign(dy);
	} else {
		dx=0;
		break;
	}
}

// Vertical
for (var i=0; i<=floor(abs(dy)); i++) {
    if(!place_meeting(x,y+(i*sign(dy)),oWall)){
		y+=sign(dy);
	} else {
		dy=0;
		break;
	}
}

// Push back in bounds if stuck in wall
if(place_meeting(x,y,oWall)){
	for(i=0, i<200, i++){
		
	}
}*/

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
	
	dx = 0;
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
	
	dy = grav;
	/*
		Note: I did this (dy=grav) instead of dy=0 to prevent onGround state flickering.
		I have a vague idea of why it works (which is: this way, y+dy is an actual collision the next frame),
		but still 0.1 doesn't work and I don't want to think if there's a better solution.
		
		Deal with it, cry about it
	*/
} else onGround = false;



/* Room boundaries
if (_x <= 0) _x = 0;
if (_x >= 640-8) _x = 640-8;


if (_y >= 300) {
	_y = 300;
	onGround = true;
}
*/

// Apply position
x = _x;
y = _y;