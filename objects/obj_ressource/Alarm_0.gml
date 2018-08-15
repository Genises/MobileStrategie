alarm_set(0, global.tree_spawn_speed[0]+random_range(global.tree_spawn_speed[1],global.tree_spawn_speed[2]));

offsetX = x+random_range(-global.treeRadius,global.treeRadius);
offsetY = y+random_range(-global.treeRadius,global.treeRadius);

numberTrees = collision_circle_list(offsetX, offsetY, global.treeRadius, obj_Tree, ds_list_create(), true, 0, false);
//show_debug_message(string(numberTrees));

if(numberTrees < 5){
	inst = instance_create_layer(offsetX,offsetY,"Instances",obj_toSpawn);
}