///draw_cloud_parallax(y, scroll_x, layers, zFar)

    var _y1             = argument0;
    var _viewCenter     = view_yview[view_current]+view_hview[view_current]/2;
    var _y2             = (_y1-_viewCenter);
    var _viewWidth      = view_wview[view_current];
    var _scrollX        = argument1;
    var _layers         = argument2;
    var _zFar           = argument3;
    var _z              = _zFar;
    var _layer          = 0;
    var _dist           = _layers/3;
    
    // Back cloud layer
    for(_layer = 0; _layer < _dist; ++_layer){
        var _scale = 10.0/_z;
        var j      = 0;
        
        // Draw them sequentially left to right
        for(var _x = -64.0; _x < _viewWidth; _x += 32.0*_scale){
            draw_sprite_ext(sprCloudsSmall, j, view_xview[view_current]+_x+((_scrollX*_scale) mod 96), _viewCenter-_y2*(_scale/8), _scale, _scale, 0, c_white, 1);
            ++j;
        }
        _z -= _zFar/_layers;
        if(_z <= 0.01)
            break;
    }
    
    // Mid cloud layer
    for(; _layer < _dist*2; ++_layer){
        var _scale = 10.0/_z;
        var j      = 0;
        // Draw them sequentially left to right
        for(var _x = -288.0; _x < _viewWidth; _x += 48.0*_scale){
            draw_sprite_ext(sprCloudsMid, j, view_xview[view_current]+_x+((_scrollX*_scale) mod 288), _viewCenter-_y2*(_scale/8), _scale, _scale, 0, c_white, 1);
            ++j;
        }
        _z -= _zFar/_layers;
        if(_z <= 0.01)
            break;
    }
     // Large cloud layer
    for(; _layer < _dist*3; ++_layer){
        var _scale = 10.0/_z;
        var j      = 0;
        
        // Draw them sequentially left to right
        for(var _x = -720.0; _x < _viewWidth; _x += 80.0*_scale){
            draw_sprite_ext(sprCloudsLarge, j, view_xview[view_current]+_x+((_scrollX*_scale) mod (320*_scale)), _viewCenter-_y2*(_scale/8), _scale, _scale, 0, c_white, 1);
             ++j;
        }
        _z -= _zFar/_layers;
        if(_z <= 0.01)
            break;
    }


