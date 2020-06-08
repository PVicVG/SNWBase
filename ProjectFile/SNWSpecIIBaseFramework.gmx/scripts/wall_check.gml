         if((place_meeting(x + sign(x_speed), y, par_solid) && !place_meeting(x + sign(x_speed), y - 1, par_solid)) || (place_meeting(x + sign(x_speed), y + 2, par_solid) && !place_meeting(x + sign(x_speed), y + 1, par_solid)) ){
           wallL = 0
           wallR = 0       
        }else{
           wallL = (place_meeting(x - 1, y, par_solid)); 
           wallR = (place_meeting(x + 1, y, par_solid));    
        }
