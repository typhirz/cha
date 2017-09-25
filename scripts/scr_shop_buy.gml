// @arg skill_id
// @arg cost

// will be used for placing an item into the first available slot
// i.e., double clicking from loot table

var skill_id = argument0;
var cost = argument1;

//
obj_Hero.skill[0] = skill_id;
obj_Hero.skill_cd[0] = ds_grid_get(global.spell, 4, obj_Hero.skill[0]); // 4 is cd
obj_Hero.skill_cd_time[0] = obj_Hero.skill_cd[0];
obj_Hero.skill_can_cast[0] = true;
