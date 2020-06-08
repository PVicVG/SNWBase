/* Init. Variables */
xspd = 0;
yspd = 0;

//Call Parent:
/* X and Y differences between current and last position. */
relative_x = x;        
relative_y = y;
previous_x = x;
previous_y = y;
x_speed    = 0; //The Horizontal Speed.
y_speed    = 0; //The Vertical Speed.       
x_dcspeed  = 0; //Increases/Decreases the horizontal speed when changing direction, aka Oscillating.
y_dcspeed  = 0; //Increases/Decreases the vertical speed  when changing direction, aka Oscillating.
