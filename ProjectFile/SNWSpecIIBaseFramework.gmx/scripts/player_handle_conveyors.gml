/// player_handle_conveyors()
    
    conveyor_id = player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, angle, obj_conveyor_belt);

    if conveyor_id && ground
    {
        if !instance_place(x + x_speed + conveyor_id.con_speed, y, par_solid) && !instance_place(x + sign(conveyor_id.con_speed), y, par_solid) 
        && !instance_place(x + conveyor_id.con_speed, y, par_solid) && !player_collision_check(COL_RIGHT, MASK_BIG, x + x_speed + conveyor_id.con_speed, y, angle, par_solid)
        && !player_collision_check(COL_LEFT, MASK_BIG, x + x_speed + conveyor_id.con_speed, y, angle, par_solid)
        {
            x += conveyor_id.con_speed;
        }
    }
    
