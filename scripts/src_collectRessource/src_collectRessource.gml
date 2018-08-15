//nächste Ressource des gewünschten Types
var next_Ressource = instance_nearest(x, y, argument[0])


//Check if carry capacity is full
if(carrying >= global.villagerMaxCarryWeight || !instance_exists(next_Ressource)){
	myState = states.returning;
	return
} 

//Stop moving if close to ressource by epsilon. Also turns of animation right now
if(!src_walkToPosition(next_Ressource.x,next_Ressource.y)){
	next_Ressource.resource -= global.collectionSpeed;
	if(next_Ressource.resource <= 0){
		instance_destroy(next_Ressource);
	}
	carrying += global.collectionSpeed;
} 


 