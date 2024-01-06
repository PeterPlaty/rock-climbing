/// @description Code



// Inherit the parent event
event_inherited();


// -- Set Position

if (playerX!=0 && playerY!=0){
	x = playerX;
	y = playerY;
	
	for(i=0; i<5; i++) {
		var _star = instance_create_depth(x,y,depth+1,oStar);
		_star.speed = 3;
		_star.direction = 30*(i+1)
	}
	
	dy = -3;
}