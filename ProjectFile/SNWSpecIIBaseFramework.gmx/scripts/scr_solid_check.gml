/// scr_solid_check( y_speed )
 // Checks for collision.
 
     var _hspd;
    _hspd = 0;
 
    var _yspd;
    _yspd = argument0;
    
    return (place_meeting(x + _hspd, y + _yspd, par_solid)) || 
           (round(_yspd) >= 0 && place_meeting(x + _hspd, y + _yspd, par_platform) && !place_meeting(x, y, par_platform));
 

