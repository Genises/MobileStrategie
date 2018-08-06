next_Tree = instance_nearest(self.x, self.y, obj_Tree)

if !instance_exists(next_Tree){
	return;
}


if(point_distance(next_Tree.x,next_Tree.y, self.x, self.y) >= global.distance_epsilon ){
	move_towards_point(next_Tree.x, next_Tree.y, global.vill_movespeed);
}else{
	self.image_speed=0;
	self.speed = 0;
	next_Tree.resource -= global.collectionSpeed;
	if(next_Tree.resource <= 0){
		instance_destroy(next_Tree);
	}
}
 