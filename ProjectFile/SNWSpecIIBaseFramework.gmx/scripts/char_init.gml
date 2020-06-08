///char_init()

 // Sonic
        sprite = spr_sonic_idle;
        EffColor = c_blue;
        start_trail(23);
    
 // Tails
    if player_index == CHAR_TAILS
    {
        sprite = spr_tails_idle;
        EffColor = c_orange;
    }
    
 // Knuckles
    if player_index == CHAR_KNUCKLES
    {
        sprite = spr_knuckles_idle;
        EffColor = c_red;
    }
    
 // Fang
    if player_index == CHAR_FANG
    {
        sprite = spr_fang_idle;
        EffColor = c_purple;
    }
    
 // Eggrobo
    if player_index == CHAR_EGGROBO
    {
        sprite = spr_eggrobo_idle;
        EffColor = c_blue;
    }   
    
 // Modern
    if player_index == CHAR_MODERN
    {
        sprite = spr_modern_idle;
        EffColor = make_color_rgb(13,152,255);       
    }
    
 // Mighty
    if player_index == CHAR_MIGHTY
    {
        sprite = spr_mighty_idle;
        EffColor = c_red;
    }
    
 // Shadow
    if player_index == CHAR_SHADOW
    {
        sprite = spr_shadow_idle;
        EffColor = c_red;
    }
    
 // Amy
    if player_index == CHAR_AMY
    {
        sprite = spr_amy_idle;
        EffColor = c_purple;
    }
    
 // Pingu
    if player_index == CHAR_PINGU
    {
        sprite = spr_pingu_idle;
        EffColor = c_blue;
    }
