//create obj_people
event_inherited();

vill_health = 100;
myState = states.idle;
carrying = 0;
ressourceCarrying = undefined;
home_instance = undefined;

enum states {
   collecting,
   returning,
   idle
   }
   
enum scout_states {
   createVillage,
   returning,
   idle
   }