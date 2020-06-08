if(x_speed > 0){
physics_x_decel()
}

x_speed = scr_approach(x_speed, -x_speed_max, x_speed_accel);
