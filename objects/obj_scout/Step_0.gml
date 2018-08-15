/// @description Insert description here
// You can write your code in this editor

//Stop moving if close to ressource by epsilon. Also turns of animation right now




switch(myState){
	case scout_states.idle:
		return;
	case scout_states.createVillage:
		if(!src_walkToPosition(scoutGoal[0],scoutGoal[1])){
			instance_create_layer(x,y,"Instances",obj_village);
			myState = scout_states.returning;	
		} 
		return;
	case scout_states.returning:
		if(!src_walkToPosition(home_instance.x,home_instance.y)){
			instance_destroy();
		}
		return;
}





