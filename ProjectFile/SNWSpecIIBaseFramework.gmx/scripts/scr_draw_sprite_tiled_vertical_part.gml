// ==== FUNCTION ====================================================================
// scr_draw_sprite_tiled_vertical_part(sprite, number, left, top, width, height, x, y);
// ==================================================================================

    var SpriteStart, SpriteEnd, SpriteStep;
 
    // Retrieve background properties 
    SpriteStep  = argument5+argument8;
    SpriteStart = view_yview[view_current]+((argument7-view_yview[view_current]) mod SpriteStep)-SpriteStep;
    SpriteEnd   = view_yview[view_current]+view_hview[view_current]+SpriteStep;
    
    while(SpriteStart<SpriteEnd) {
        draw_sprite_part(argument0,argument1, argument2, argument3, argument4, argument5, argument6, SpriteStart);   
        SpriteStart += SpriteStep;
    }
