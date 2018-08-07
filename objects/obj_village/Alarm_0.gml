/// @description Insert description here
// You can write your code in this editor
alarm_set(0, global.villagerProductionSpeed);
inst = instance_create_layer(self.x,self.y,"Instances",obj_villager);
with (inst)
   {
   home_id = self.id;
   home_coordinates = [self.x,self.y];
   }