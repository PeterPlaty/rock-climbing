/// @description Bounce at an angle

// Push outside
for(var i=0; i<100; i++){
	if(!place_meeting(x+i,y,oSlope)){
		x=x+i;
		break;
	}
	
	if(!place_meeting(x-i,y,oSlope)){
		x=x-i;
		break;
	}
}

// Bounce
var angle = tan(other.sprite_width/other.sprite_height);

var v = abs(dx)+abs(dy);
var v_new = abs(v * sin(angle)) - abs(0.8*cos(angle));

var axis_angle = -90+angle;

dx=-sign(dx)*(v_new*cos(axis_angle));
dy=-sign(dy)*(v_new*sin(axis_angle));
