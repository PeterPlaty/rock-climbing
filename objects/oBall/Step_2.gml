/// @description Follow player


if(keyboard_check(INPUT.down)){
	if(oPlayer.onGround) {
		// Hold ball to the side
		x=lerp(x,oPlayer.x+34*oPlayer.facing,0.5)
		y=lerp(y,oPlayer.y-5,0.5)
	} else {
		// Hold ball beneath (pogo jump)
		x=lerp(x,oPlayer.x,0.5);
		y=lerp(y,oPlayer.y+32,0.5);
		
		if(place_meeting(x,y,oWall)){
			// Boost player up 
			// (code from oBallGravity)
			oPlayer.dy=-10;
			oPlayer.onGround=false;
	
			instance_destroy();
			
			// Shoot stars
			for(var i=0; i<8; i++){
				var _star = instance_create_layer(x,y,"Instances",oStar);
				_star.direction=45*i;
				_star.speed=3
			}
		}
	}
} else {
	// Hold ball over the head
	x=lerp(x,oPlayer.x,0.5);
	y=lerp(y,oPlayer.y-32,0.5);
}