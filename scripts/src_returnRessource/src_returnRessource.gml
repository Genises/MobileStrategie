//Move home or unload ressources
//show_debug_message("I'm returning stuff")
if(!src_walkToPosition(home_instance.x,home_instance.y)){
	carrying -= global.collectionSpeed;
	with(home_instance){
		self.wood += global.collectionSpeed;
	}
	if(carrying <= 0){
		carrying = 0;
		myState = states.idle; 
	}
}
 