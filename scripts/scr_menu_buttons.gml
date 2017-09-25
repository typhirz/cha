// @arg first entry
// @arg second entry

first = argument0;
second = argument1;

// note: i%4 only works because each menu screen using this has 4 options, must change if
// this changes
for (var i = first; i < second + 1; i++) {
    var inst = instance_create(xpos, ypos + (i%4)*space, obj_menu_button);
    with (inst) {
        name = global.menu[i];
    }
}
