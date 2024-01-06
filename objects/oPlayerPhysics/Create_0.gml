/// @description Set up object

// -- MOTION --
phy_position_x=playerX;
phy_position_y=playerY;

// Don't know if it works >:(
physics_apply_force(x,y,playerDx*1000,playerDy*1000)

// -- Change to player --
onGroundTime = 0;