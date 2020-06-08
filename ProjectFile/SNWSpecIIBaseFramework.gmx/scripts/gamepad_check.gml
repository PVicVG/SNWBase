/// gamepad_check()
 // Returns a gamepad button press.
 
    if(joystick_check_button(1,1))  { return  1; } else
    if(joystick_check_button(1,2))  { return  2; } else
    if(joystick_check_button(1,3))  { return  3; } else
    if(joystick_check_button(1,4))  { return  4; } else
    if(joystick_check_button(1,5))  { return  5; } else
    if(joystick_check_button(1,6))  { return  6; } else
    if(joystick_check_button(1,7))  { return  7; } else
    if(joystick_check_button(1,8))  { return  8; } else
    if(joystick_check_button(1,9))  { return  9; } else
    if(joystick_check_button(1,10)) { return 10; } else
    if(joystick_check_button(1,11)) { return 11; } else
    if(joystick_check_button(1,12)) { return 12; } else
    if(joystick_check_button(1,13)) { return 13; } else
    if(joystick_check_button(1,14)) { return 14; } else
    if(joystick_check_button(1,15)) { return 15; } else
    if(joystick_check_button(1,16)) { return 16; } else
    if(joystick_check_button(1,17)) { return 17; } else
    if(joystick_check_button(1,18)) { return 18; } else
    if(joystick_check_button(1,19)) { return 19; } else
    if(joystick_check_button(1,20)) { return 20; } else
    if(joystick_zpos(1) > 0.1)      { return -1; } else
    if(joystick_zpos(1) < -0.1)     { return -2; } else {
                                      return  0;
    }


