///scr_draw_background_tiled_part(background, left, top, width, height, x, y, x sep, y sep);
// ==================================================================================

    var BackgroundXStart, BackgroundXEnd, BackgroundXCurrent, BackgroundXStep;
    var BackgroundYStart, BackgroundYEnd, BackgroundYCurrent, BackgroundYStep;
 
    // Retrieve background properties        
    BackgroundXStep  = argument3+argument7;
    BackgroundXStart = view_xview[view_current]+((argument5-view_xview[view_current]) mod BackgroundXStep)-BackgroundXStep;
    BackgroundXEnd   = view_xview[view_current]+view_wview[view_current]+BackgroundXStep;
    BackgroundYStep  = argument4+argument8;
    BackgroundYStart = view_yview[view_current]+((argument6-view_yview[view_current]) mod BackgroundYStep)-BackgroundYStep;
    BackgroundYEnd   = view_yview[view_current]+view_hview[view_current]+BackgroundYStep;
        
    for (BackgroundYCurrent = BackgroundYStart; BackgroundYCurrent <= BackgroundYEnd; BackgroundYCurrent += BackgroundYStep)
     for (BackgroundXCurrent = BackgroundXStart; BackgroundXCurrent <= BackgroundXEnd; BackgroundXCurrent += BackgroundXStep)
            draw_background_part(argument0, argument1, argument2, argument3, argument4, BackgroundXCurrent, BackgroundYCurrent);
