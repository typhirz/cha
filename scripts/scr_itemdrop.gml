///PLACEHOLDER -- DO NOT USE

// @arg item_id
// @arg count

var item_id = argument0;
var count = argument1;

// double for loop iterates over the 2d array inventory of size inv_width x inv_height
for (j = 0; j < inv_height; j++) {
    for (i = 0; i < inv_width; i++) {
        var inv = global.inventory[i, j];
        if inv[0] == -1 || inv[1] == 0 {
            global.inventory[i, j] = scr_item(item_id, count);
            return(1);
        }
    }
}
return(0);
