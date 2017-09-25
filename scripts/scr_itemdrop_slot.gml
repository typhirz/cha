// @arg slot_i
// @arg slot_j

// will be used for removing arbitrary items from specific slots

var slot_i = argument0;
var slot_j = argument1;

if slot_i >= inv_width || slot_j >= inv_height {
    return(0);
}

global.inventory[slot_i, slot_j] = scr_item(-1, 0);

