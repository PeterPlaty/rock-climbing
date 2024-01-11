/// @description Code

var sprite = sPlayerRight;

if(facing==-1){
	sprite = sPlayerLeft;
}

draw_sprite(sprite,0,x,y)