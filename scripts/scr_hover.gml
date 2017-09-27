// @arg obj

var obj = argument0
var mouseX = window_mouse_get_x();
var mouseY = window_mouse_get_y();

objID = instance_position(mouseX, mouseY, obj)

// if hovering over something, return true and what i am hovering over
if objID != noone {
    return scr_skill(true, objID)
}
else {
    return scr_skill(false, 0)
}
