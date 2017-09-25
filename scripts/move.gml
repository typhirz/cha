/// @arg speed
/// @arg direction

var spd = argument0
var dir = argument1

var xtarg = x+lengthdir_x(spd,dir);
var ytarg = y+lengthdir_y(spd,dir);
var pix = 1

if !place_meeting(xtarg,ytarg,obj_wall) {
    x = xtarg;
    y = ytarg;
}
else if !place_meeting(xtarg,y,obj_wall) {
    x = xtarg;
}
else if !place_meeting(x,ytarg,obj_wall) {
    y = ytarg;
}

/*if (dir != 90 || dir != 270) && place_meeting(xtarg,y,obj_wall) {
    if (dir < 90 || dir > 270) {
        while !place_meeting(x + pix,y,obj_wall) {
            x += pix;
        }
    }
    else {
        while !place_meeting(x - pix,y,obj_wall) {
            x -= pix;
        }
    }
}
if (dir != 0 || dir != 180) && place_meeting(x,ytarg,obj_wall) {
    if (dir < 180) {
        while !place_meeting(x,y - pix,obj_wall) {
            y -= pix
        }
    }
    else {
        while !place_meeting(x,y + pix,obj_wall) {
            y += pix
        }
    }
}

