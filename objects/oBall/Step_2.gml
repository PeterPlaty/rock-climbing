/// @description Follow player


if(keyboard_check(INPUT.down)){
	x=lerp(x,oPlayer.x+34*sign(oPlayer.dx),0.5)
	y=lerp(y,oPlayer.y,0.5)
	
	PushInBounds();
} else {
	x=lerp(x,oPlayer.x,0.5);
	y=lerp(y,oPlayer.y-32,0.5);
}