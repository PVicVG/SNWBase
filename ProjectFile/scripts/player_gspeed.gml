/// player_gspeed()
 // Returns the ground speed.
 
    if(abs(x_speed) <= abs(y_speed))
    {
       g_speed = y_speed * -dsin(angle);
    }else{
       g_speed = x_speed;
    }

