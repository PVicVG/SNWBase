if state != STATE_DEATH 
{
    if player_collision_check(COL_BOTTOM_OBJECT, MASK_MAIN, x, y, angle, par_rail) && animation_direction = 1
    {
        if !audio_is_playing(player_rail_contact) && !instance_exists(obj_grindspark)
        {
            aud_play_simple(player_rail_contact)
            instance_create(x,y,obj_grindspark)
        }
        if x_speed < 5.5
        {
            x_speed = 5.5
        }
        state = STATE_RAIL;
        animation = "roll"
    }
    else
    if !player_collision_check(COL_BOTTOM_OBJECT, MASK_MAIN, x, y, angle, par_rail) && state = STATE_RAIL && animation_direction = 1
    {
        if audio_is_playing(player_rail_contact)
        {
            audio_stop_sound(player_rail_contact);
        }
            state = STATE_JUMP;
    }
    
    if player_collision_check(COL_BOTTOM_OBJECT, MASK_MAIN, x, y, angle, par_rail) && animation_direction = -1
    {
        if !instance_exists(obj_grindspark)
        {
            aud_play_simple(player_rail_contact)
            instance_create(x,y,obj_grindspark)
        }
        
        if x_speed > -5.5
        {
            x_speed = -5.5
        }
        
        state = STATE_RAIL;
        animation = "roll";
    }
    else
    if !player_collision_check(COL_BOTTOM_OBJECT, MASK_MAIN, x, y, angle, par_rail) && state = STATE_RAIL && animation_direction = -1
    {
        if audio_is_playing(player_rail_contact)
        {
            audio_stop_sound(player_rail_contact)
        }
        state = STATE_JUMP;
    }
}
