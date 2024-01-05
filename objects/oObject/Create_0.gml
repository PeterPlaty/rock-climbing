/// @description Set Up Variables

/*
	This object is the father of all objects who have gravity.
	(Those objects must have the x,y coordinates centered with the sprite, and the sprite must be 32x32)
	Gravity is calculated and applied here
*/

dx = 0;
dy = 0;

accel = 5;
grav = 0.4;

maxH = 3;
maxV = 8;

// Status variables
onGround = false;