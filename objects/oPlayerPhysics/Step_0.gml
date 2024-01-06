/// @description Code

// Collision check for this frame
var onGround = physics_test_overlap(x,y+6,0,oWall)

// -- MOVE --

// Horizontal force
var hInput = keyboard_check(INPUT.right) - keyboard_check(INPUT.left)
physics_apply_force(x,y,hInput*10000,0)

// Vertical force
if(keyboard_check_pressed(INPUT.jump) && onGround){
	physics_apply_force(x,y,0,-5000000)
}


// -- CHANGE TO PLAYER
if(onGround){
	var currentRotation = abs(phy_rotation) mod 360;
	
	if(currentRotation>357 || currentRotation<3){
		// If the rotation seems somewhat standing
		onGroundTime+=1;
	} else {
		onGroundTime=0;
	}
	
	if(onGroundTime > 30){
		playerX = phy_position_x;
		playerY = phy_position_y;
		
		room_goto_previous();
	}
}