// ==== FUNCTION ====================================================================
// scr_draw_sprite_tiled_horizontal_part(sprite, number, left, top, width, height, x, y, sep)
// ==================================================================================

    var SpriteStart, SpriteEnd, SpriteStep;
    
    // Retrieve background properties        
    SpriteStep  = argument4+argument8;
    SpriteStart = view_xview[view_current]+((argument6-view_xview[view_current]) mod SpriteStep)-SpriteStep;
    SpriteEnd   = view_xview[view_current]+view_wview[view_current]+SpriteStep;
        
    while(SpriteStart<SpriteEnd) {
        draw_sprite_part(argument0,argument1, argument2, argument3, argument4, argument5, SpriteStart, argument7);   
        SpriteStart += SpriteStep;
    }
