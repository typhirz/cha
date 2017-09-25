/// @arg value
/// @arg type

var value = argument0;
var type = argument1;

// value is how much, type is a string for the stat

switch type {
    case "hp":
        self.hp_max = value;
        self.hp_curr = value;
        break;
    case "mp":
        self.mp_max = value;
        self.mp_curr = value;
    case "pwr":
        damage_mod = (value - 20) / .5; // in percent, base is 0%, increases 2% per 1
        break;
    case "tgh":
        damage_inc_mod = -value; // flat value
        break;
    case "hst":
        self.hst = .45 * exp(.05 * value); // exponential growth
        self.hst_time = 1 / self.hst;
        break;
    case "spd":
        self.spd =  2 * 16 + value / 5 * 16 // result is in pixels/s, TODO: change 16 to tile size var
        break;
    case "int":
        self.int = value; // int modifier will be handle on a case by case basis
        break;
    case "rgn":
        self.hp_regen = value / 8; // result is in hp per second, base of 2.5/s
        self.mp_regen = value / 10; // mp per second, base of 2/s
        break;
}
