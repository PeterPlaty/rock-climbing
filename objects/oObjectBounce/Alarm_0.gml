/// @description Stop bouncing
// Prevents flickering/infinite bouncing

dx=0;
dy=0;
		
// Set up destruction
if(alarm[1]<0){
	alarm[1]=30*3
}