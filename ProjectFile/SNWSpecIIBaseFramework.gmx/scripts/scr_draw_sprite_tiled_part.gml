// ==== FUNCTION ====================================================================
// scr_draw_sprite_tiled_part(sprite, number, left, top, width, height, x, y, x sep, y sep);
// ==================================================================================

    var SpriteXStart, SpriteXEnd, SpriteXCurrent, SpriteXStep;
    var SpriteYStart, SpriteYEnd, SpriteYCurrent, SpriteYStep;
 
    // Retrieve background properties        
    SpriteXStep  = argument4+argument8
    SpriteXStart = view_xview[view_current]+((argument6-view_xview[view_current]) mod SpriteXStep)-SpriteXStep;
    SpriteXEnd   = view_xview[view_current]+view_wview[view_current]+SpriteXStep;
    SpriteYStep  = argument5+argument9;
    SpriteYStart = view_yview[view_current]+((argument7-view_yview[view_current]) mod SpriteYStep)-SpriteYStep;
    SpriteYEnd   = view_yview[view_current]+view_hview[view_current]+SpriteYStep;
        
    for (SpriteYCurrent = SpriteYStart; SpriteYCurrent <= SpriteYEnd; SpriteYCurrent += SpriteYStep)
        for (SpriteXCurrent = SpriteXStart; SpriteXCurrent <= SpriteXEnd; SpriteXCurrent += SpriteXStep)
            draw_sprite_part(argument0,argument1, argument2, argument3, argument4, argument5, SpriteXCurrent, SpriteYCurrent);
