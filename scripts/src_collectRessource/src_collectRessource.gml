if(self.carrying >= global.villagerMaxCarryWeight){
	self.myState = states.returning;
	return
}

next_Ressource = instance_nearest(self.x, self.y, argument[0])

if !instance_exists(next_Ressource){
	return;
    self.image_speed=0;
	self.speed = 0;
}


if(point_distance(next_Ressource.x,next_Ressource.y, self.x, self.y) >= global.distance_epsilon ){
	move_towards_point(next_Ressource.x, next_Ressource.y, global.vill_movespeed);
}else{
	self.image_speed=0;
	self.speed = 0;
	next_Ressource.resource -= global.collectionSpeed;
	if(next_Ressource.resource <= 0){
		instance_destroy(next_Ressource);
	}
	self.carrying += global.collectionSpeed;
} 


 