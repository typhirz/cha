var dt = delta_time/1000000;
var pixels_this_frame = dt * self.spd;

time_alive += dt;

if time_alive <= self.time {
    move_proj(pixels_this_frame,self.dir);
}
else {
    instance_destroy();
    time_alive = 0;
}
