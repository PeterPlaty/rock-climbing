// Very bad, but it works, so hey, don't complain
function PushOutOf(object){
	if(instance_place(x, y, object) != noone){	// If there's a collision
		for(var i=0; i<200; i++){
			if(instance_place(x+i,y,object)==noone){
				x+=i;
				break;
			}
		
			if(instance_place(x-i,y,object)==noone){
				x-=i;
				break;
			}
		}
	}
}