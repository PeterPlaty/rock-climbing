/// @description Shoot stars

for(var i=0; i<8; i++){
	var _star = instance_create_layer(x,y,"Instances",oStar);
	_star.direction=45*i;
	_star.speed=3
}