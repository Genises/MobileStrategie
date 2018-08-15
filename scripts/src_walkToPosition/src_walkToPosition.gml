if(point_distance(argument[0],argument[1], x, y) >= global.distance_epsilon ){
	move_towards_point(argument[0],argument[1], global.vill_movespeed);
	return true;
} else {
	image_speed=0;
	speed = 0;
	return false;
}