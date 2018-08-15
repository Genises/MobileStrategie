resource = 100;

//minimum spawn speed
spawn_speed = random_range(1000,300);
obj_toSpawn = obj_Tree;

alarm_set(0, spawn_speed);
