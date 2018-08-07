if(myState = states.idle && carrying == 0){
	myState = states.collecting;
}

switch(myState){
	case states.idle:
		return;
	case states.returning:
		src_returnRessource();
		return;
	case states.collecting:
		src_collectRessource(obj_Tree);
		return;
}





