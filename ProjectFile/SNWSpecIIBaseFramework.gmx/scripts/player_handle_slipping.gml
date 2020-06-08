if state != STATE_DEATH{
    if player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, 0, par_collision_slipping_right)
    {
        ground = false
        if x_speed < 5.5{
        x_speed = 5.5
        }
        y_speed = 2.5
        animation = "hurt"
        animation_direction = 1
        launch_lock = 0
        state = STATE_SLIPPING
        audio_stop_sound(player_roll)
        audio_stop_sound(player_skidding)
    }
    if player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, 0, par_collision_slipping_left)
    {
        ground = false
        if x_speed < -5.5{
        x_speed = -5.5
        }
        y_speed = 2.2
        animation = "hurt"
        animation_direction = -1
        launch_lock = 0
        state = STATE_SLIPPING
        audio_stop_sound(player_roll)
        audio_stop_sound(player_skidding)
    }
    if !player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, 0, par_collision_slipping_left) &&  state = STATE_SLIPPING || !player_collision_check(COL_BOTTOM_OBJECT, MASK_BIG, x, y, 0, par_collision_slipping_right) && state = STATE_SLIPPING{
        state = STATE_DEFAULT
        launch_lock = 1
    }
}
