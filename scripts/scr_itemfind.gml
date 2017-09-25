// @arg item_id

// this will find the first slot with the requested item_id and return its position
// in the inventory array

var item_id = argument0;

// double for loop iterates over the 2d array inventory of size inv_width x inv_height
for (j = 0; j < inv_height; j++) {
    for (i = 0; i < inv_width; i++) {
        var inv = global.inventory[i, j];
        if inv[0] == item_id && inv[1] > 0 {
            var slot;
            slot[0] = i;
            slot[1] = j;
            return(slot);
        }
    }
}
return(0);
