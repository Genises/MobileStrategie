if(point_distance(self.home_coordinates[0],self.home_coordinates[1], self.x, self.y) >= global.distance_epsilon ){
	move_towards_point(self.home_coordinates[0],self.home_coordinates[1], global.vill_movespeed);
}else{
	self.image_speed=0;
	self.speed = 0;
	self.carrying -= global.collectionSpeed;
	if(self.carrying <= 0){
		self.carrying = 0;
		self.myState = states.idle; 
	}
}
 