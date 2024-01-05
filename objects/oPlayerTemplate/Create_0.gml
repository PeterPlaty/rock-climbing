/// @description Set up

// TEMPORARY - control variables
globalvar left, right, jump;
left = vk_left;
right = vk_right;
jump = vk_up;

keyboard_set_map(vk_space, jump);
keyboard_set_map(ord("W"), jump);
keyboard_set_map(ord("A"), left);
keyboard_set_map(ord("D"), right);


// Movement variables
x = 100;
y = 10;

dx = 0;
dy = 0;

accel = 5;
grav = 0.4;

maxH = 3;
maxV = 8;

// Status variables
onGround = false;


// Color change detection
// This variable checks the color of the current frame
// If at the end of the frame color != prevColor, then it changed
// The variable is used to avoid bugs and push the player out of the walls
prevColor = 0;	