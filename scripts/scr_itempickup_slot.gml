// @arg item_id
// @arg count
// @arg slot_i
// @arg slot_j

// will be used for placing specific items into specific slots

var item_id = argument0;
var count = argument1;
var slot_i = argument2;
var slot_j = argument3;

if slot_i >= inv_width || slot_j >= inv_height {
    return(0);
}

global.inventory[slot_i, slot_j] = scr_item(item_id, count);

