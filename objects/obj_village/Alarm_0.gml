/// @description Insert description here
// You can write your code in this editor
alarm_set(0, global.villagerProductionSpeed);
inst = instance_create_layer(x,y,"Instances",obj_villager);
with (inst)
   {
   home_instance = other;
   ressourceCarrying = obj_Tree;
   }