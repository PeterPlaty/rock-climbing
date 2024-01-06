// Very bad, but it works, so hey, don't complain
function PushInBounds(){
	if(instance_place(x, y, oWall) != noone){	// If there's a collision
		for(var i=0; i<200; i++){
			if(instance_place(x+i,y,oWall)==noone){
				x+=i;
				break;
			}
		
			if(instance_place(x-i,y,oWall)==noone){
				x-=i;
				break;
			}
		
			if(instance_place(x,y+i,oWall)==noone){
				y+=i;
				break;
			}
		
			if(instance_place(x,y-i,oWall)==noone){
				y-=i;
				break;
			}
		}
	}
}