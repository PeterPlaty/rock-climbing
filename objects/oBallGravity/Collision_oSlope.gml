/// @description Bounce at an angle

/* Push outside
for(var i=0; i<100; i++){
	if(!place_meeting(x+i,y,oSlope)){
		x=x+i;
		break;
	}
	
	if(!place_meeting(x-i,y,oSlope)){
		x=x-i;
		break;
	}
}*/

// Bounce
var angle = tan(other.sprite_width/other.sprite_height);

var v = sqrt(dx*dx+dy*dy);

var u = v*sin(angle)*sign(dx);
var w = v*cos(angle)*sign(dy);

dx=-u*0.8;
dy=w;
