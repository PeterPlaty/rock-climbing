/// @description Code

draw_self();

draw_set_color(c_white);

var currentRotation = abs(phy_rotation) mod 360;

if(currentRotation < 3 || currentRotation > 357){
	//draw_set_color(c_yellow)
}

draw_set_color(c_white);

draw_text(2,10,currentRotation);