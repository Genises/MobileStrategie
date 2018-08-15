/// @description Insert description here
// You can write your code in this editor

//show_message("Pressed something");
inst = instance_create_layer(global.myCastle.x,global.myCastle.y,"Instances",obj_scout);
with(inst){
	scoutGoal = [mouse_x,mouse_y]; 
	myState = scout_states.createVillage;
	home_instance = global.myCastle;
}