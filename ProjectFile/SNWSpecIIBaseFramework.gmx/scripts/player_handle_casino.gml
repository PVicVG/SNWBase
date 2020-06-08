/// player_handle_casino()
 // Script for handling bumpers and flippers
 
//Bumper and Hex Bumper:
bumper_handle = player_collision_check(COL_MAIN_OBJECT, x, y, obj_casino_bumper, -1, -1); 

//Normal Bumper:
if( bumper_handle != noone )
{ 
  angle_to_bumper = degtorad(round(wrap_angle(point_direction(x, y, bumper_handle.x, bumper_handle.y)-90)/22.5)*24);
  x_speed = sin(wrap_angle(angle_to_bumper))*8;
  y_speed = cos(wrap_angle(angle_to_bumper))*8;     
  bumper_handle.bumper_state = 1;
  ground = false; 
};

