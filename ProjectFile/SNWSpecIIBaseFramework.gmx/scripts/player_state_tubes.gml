///player_state_tubes();
if(state = STATE_TUBE)
{
 /* Increase Timer and Set Ground to false: */
 tube_timer += 0.1;
 ground  = false;
 jump_lock = true; /* Use this variable to lock the Jumping */
 
/* Check the Tube type and then move!*/ 
if ( (tube_type == 1) || (tube_type == 3) )
      {
     x_speed = tube_mov_x;
     y_speed = tube_mov_y;
      };
     };
     else
     tube_timer = 0;
    
     /* Play Rolling Sound: */ 
     if ( tube_timer = 0.2 )
     {
     if ((tube_type == 1) || (tube_type == 2))
        {
        aud_play_sound(player_roll, global.sfx_volume, 1, 0, 0);
        };
     };
     if (tube_timer > 0.5){
     tube_timer = 0.5
     
};
