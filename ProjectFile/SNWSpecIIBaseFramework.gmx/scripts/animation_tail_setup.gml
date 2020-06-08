/// animation_tail_setup()
 // Script used to apply the tail parts for tails.
 
    switch(animation)
    {
           case "idle":
           case "idle bored":
           case "idle bored 2":
           case "look up":
           case "grab":
           {
                animation_tail_apply(spr_tail_part_1, 0.14, animation_direction*-14, 2, 0, animation_direction);
                break;
           }
           case "push":
           {
                animation_tail_apply(spr_tail_part_1, 0.14, animation_direction*-10, 2, 0, animation_direction);
                break;
           }           
           case "crouch":
           {
                animation_tail_apply(spr_tail_part_1, 0.14, animation_direction*-18, 2, 0, animation_direction);
                break;
           }  
           case "balance":
           case "balance alt":
           {
                animation_tail_apply(spr_tail_part_1, 0.14, animation_direction*-10, -4, 0, animation_direction);
                break;
           }             
           case "skid":
           case "skid turn":
           {
                animation_tail_apply(spr_tail_part_1, 0.14, animation_direction*-10, 2, 0, animation_direction);
                break;
           }  
           case "roll":
           {
                animation_tail_apply(spr_tail_part_3, 0.25, 0, 0, tails_tail_angle, tails_tail_direction);                
                break;
           } 
           case "spindash":
           {
                animation_tail_apply(spr_tail_part_2, 0.50, animation_direction*-16, 2, 0, animation_direction);
                break;
           }         
           case "run":
           {
                if(abs(x_speed) < 8)
                {
                   animation_tail_apply(spr_tail_part_5, 0.25+abs(x_speed)/25, 0, 0, animation_angle, animation_direction);
                }
                else
                {
                   animation_tail_apply(spr_tail_part_6, 0.25+abs(x_speed)/25, 0, 0, animation_angle, animation_direction);                
                }
                break;
           }  
           case "fly":
           case "fly exhausted":
           {
                animation_tail_apply(spr_tail_part_4, 0.25, animation_direction*-8, -10, 0, animation_direction);
                break;
           }                                          
           default:
           {
                animation_tail_apply(noone, -1, -1, -1, -1, -1);
                break;
           }
    }

