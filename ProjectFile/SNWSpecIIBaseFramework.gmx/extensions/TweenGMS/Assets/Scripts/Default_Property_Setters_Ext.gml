#define Default_Property_Setters_Ext
/// Default_Property_Setters_Ext()
/*
    *************
     PLEASE READ
    *************
    
    With extended property setters, you can access custom data which you choose to pass to it.
    Custom data can be passed as additional parameters to TweenFire(), TweenCreate, and TweenPlay().
    Any value supplied after the "destination" parameter will be passed as extended data.   
     
        var _x1 = x, _x2 = mouse_x;
        var _y1 = y, _y2 = mouse_y;
        
        TweenFire(id, ext_xy__, EaseLinear, 0, true, 0.0, 2.0, 0, 1, _x1, _x2, _y1, _y2);
    
    If ONLY ONE extra argument is passed, that value will directly override the [target] value
    passed to standard property setters as [argument1]. If MORE THAN ONE extra argument is supplied,
    then an [array] of all extended data will override [argument1]. 
    
    NOTE: In extended property setters, the tween's target can be accessed from [argument2]. 
    
    [EXAMPLE]
    
        /// SOME EVENT
        {
            var _viewID = 1;
            var _x1 = view_xview[_viewID];
            var _x2 = mouse_x;
            
            // Fire tween, passing view index as extended property
            TweenFire(id, ext_view_xview__, EaseOutQuad, 0, true, 0.0, 1.0, _x1, _x2, _viewID);
        }
        
        ** Property Setter Script ** --> [view] has directly overridden [target]
        /// ext_view_xview__(value, view) 
        {
            var _value = argument0;
            var _viewID = argument1;
            
            view_xview[_viewID] = _value;
        }
        
    
    When using extended property setters, it is often useful to
    create tweens with a start value of 0 and destination value of 1.
    The eased value between 0 and 1 can be accessed from the extended property setter 
    as a relative amount representing the tween's ease algorithm over time.
    This amount can be used with GameMaker's lerp() function to calculate
    custom data for updating multiple variables.
    
    [EXAMPLE]
    
        /// SOME EVENT
        {
            var _x1 = x, _x2 = mouse_x;
            var _y1 = y, _y2 = mouse_y;
        
            // Fire tween, passing x/y coordinates as extended data
            TweenFire(id, ext_xy__, EaseInQuad, 0, true, 0.0, 1.0, 0, 1, _x1, _x2, _y1, _y2);
        }
        
        ** Property Setter Script ** --> array passed to argument1
        /// ext_xy__(amount, data[x1,x2,y1,y2], target) 
        {
            var _amount = argument0;
            var _data = argument1;
            var _target = argument2;
            
            var _x1 = _data[0], _x2 = _data[1];
            var _y1 = _data[2], _y2 = _data[3];
            
            _target.x = lerp(_x1, _x2, _amount);
            _target.y = lerp(_y1, _y2, _amount);
        }
        
    
    If you need to pass many arguments to extended property setters, or for convenience,
    you can use TPExt() for pre-packaging extended data as a 1d array.
    
    [EXAMPLE]
    
        /// SOME EVENT
        {
            // Package extended data as an array
            var _xyCoords = TPExt(x, mouse_x, y, mouse_y);
        
            // Fire tween, directly passing extended array data
            TweenFire(id, ext_xy__, EaseInQuad, 0, true, 0.0, 1.0, 0, 1, _xyCoords);
        }
        

    It is possible to have extended property setters use different easing algorithms for each eased variable. 
    You can achieve this by tweening a value between 0 and 1 with [EaseLinear]. 
    Then, by using Ease(), you can use the linear amount to apply a custom ease for different values.
    The modified version of an above example could look like this:
    
    [EXAMPLE]
    
        /// ext_xy__(amount, data[x1|x2|y1|y2], target)
        {
            var _amount = argument0; // Get linear amount of time elapsed (0.0–1.0)
            var _data = argument1;
            var _target = argument2;
            
            var _x1 = _data[0], _x2 = _data[1];
            var _y1 = _data[2], _y2 = _data[3];
    
            // Update x/y position by using Ease() for each variable
            _target.x = Ease(_x1, _x2, _amount, EaseInOutQuad);
            _target.y = Ease(_y1, _y2, _amount, EaseInOutElastic);
        }
*/


#define ext_xy__
/// ext_xy__(amount,data[x1|x2|y1|y2],target)

var _amount = argument0;
var _data = argument1;
var _target = argument2;

_target.x = lerp(_data[0], _data[1], _amount);
_target.y = lerp(_data[2], _data[3], _amount);

#define ext_roundxy__
/// ext_roundxy__(amount,data[x1|x2|y1|y2],target)

var _amount = argument0;
var _data = argument1;
var _target = argument2;

_target.x = round(lerp(_data[0], _data[1], _amount));
_target.y = round(lerp(_data[2], _data[3], _amount));

#define ext_hvspeed__
/// ext_hvspeed__(amount,data[h1|h2|v1|v2],target)

var _amount = argument0;
var _data = argument1;
var _target = argument2;

_target.hspeed = lerp(_data[0], _data[1], _amount);
_target.vspeed = lerp(_data[2], _data[3], _amount);

#define ext_image_blend__
/// ext_image_blend__(amount,data[col1|col2],target)

argument2.image_blend = merge_colour(argument1[0], argument1[1], argument0);

#define ext_image_xyscale__
/// ext_image_xyscale__(amount,data[x1|x2|y1|y2],target)

var _amount = argument0;
var _data = argument1;
var _target = argument2;

_target.image_xscale = lerp(_data[0], _data[1], _amount);
_target.image_yscale = lerp(_data[2], _data[3], _amount);

#define ext_path__
/// ext_path__(amount,data[path|absolute|xstart|ystart|xrelative|yrelative|repeat],target)

var _amount = argument0;
var _data = argument1;
var _target = argument2;
var _path = _data[0];
var _absolute = _data[1];
var _xstart = _data[2];
var _ystart = _data[3];
var _xrelative = _data[4];
var _yrelative = _data[5];
var _repeat = _data[6];

with(_target)
{
    if (_repeat)
    {
        var _xDif = path_get_x(_path, 1) - path_get_x(_path, 0); // Could cache these two??
        var _yDif = path_get_y(_path, 1) - path_get_y(_path, 0);
            
        if (_amount > 0)
        {   
            _xrelative = _xstart + _xDif * floor(_amount);
            _yrelative = _ystart + _yDif * floor(_amount);
            _amount = _amount mod 1;
        }
        else if (_amount < 0)
        {
            _xrelative = _xstart + _xDif * ceil(_amount-1);
            _yrelative = _ystart + _yDif * ceil(_amount-1);
            _amount = 1 + _amount mod 1;
        }
        else
        {
            _xrelative = _xstart;
            _yrelative = _ystart;
        }
        
        x = path_get_x(_path, _amount) + _xrelative;
        y = path_get_y(_path, _amount) + _yrelative;
    }
    else
    {
        if (_amount > 0)
        {
            if (path_get_closed(_path) || _amount < 1)
            {
                x = path_get_x(_path, _amount mod 1) + _xrelative;
                y = path_get_y(_path, _amount mod 1) + _yrelative;
            }
            else
            {
                var _length = path_get_length(_path) * (abs(_amount)-1);
                var _direction = point_direction(path_get_x(_path, 0.999), path_get_y(_path, 0.999), path_get_x(_path, 1), path_get_y(_path, 1));
                
                x = path_get_x(_path, 1) + _xrelative + lengthdir_x(_length, _direction);
                y = path_get_y(_path, 1) + _yrelative + lengthdir_y(_length, _direction);
            }
        }
        else if (_amount < 0)
        {
            if (path_get_closed(_path))
            {
                x = path_get_x(_path, 1+_amount) + _xrelative;
                y = path_get_y(_path, 1+_amount) + _yrelative;
            }
            else
            {
                var _length = path_get_length(_path) * abs(_amount);
                var _direction = point_direction(path_get_x(_path, 0), path_get_y(_path, 0), path_get_x(_path, 0.001), path_get_y(_path, 0.001));
                
                x = path_get_x(_path, 0) + _xrelative - lengthdir_x(_length, _direction);
                y = path_get_y(_path, 0) + _yrelative - lengthdir_y(_length, _direction);
            }
        }
        else
        {
            x = path_get_x(_path, 0) + _xrelative;
            y = path_get_y(_path, 0) + _yrelative;
        }
    }
}

#define ext_background_xy__
/// ext_background_xy__(amount,data[bg|x1|x2|y1|y2])

var _data = argument1;
var _bgIndex = _data[0];

background_x[_bgIndex] = lerp(_data[1], _data[2], argument0);
background_y[_bgIndex] = lerp(_data[3], _data[4], argument0);



#define ext_background_x__
/// ext_background_x__(value,bg)

background_x[argument1] = argument0;

#define ext_background_y__
/// ext_background_y__(value,bg)

background_y[argument1] = argument0;

#define ext_background_xyscale__
/// ext_background_xyscale__(amount,data[bg|x1|x2|y1|y2])

var _data = argument1;
var _bgIndex = _data[0];

background_xscale[_bgIndex] = lerp(_data[1], _data[2], argument0);
background_yscale[_bgIndex] = lerp(_data[3], _data[4], argument0);

#define ext_background_xscale__
/// ext_background_xscale__(value,bg)

background_xscale[argument1] = argument0

#define ext_background_yscale__
/// ext_background_yscale__(value,bg)

background_yscale[argument1] = argument0;

#define ext_background_hvspeed__
/// ext_background_hvspeed__(amount,data[bg|h1|h2|v1|v2])

var _data = argument1;
var _bgIndex = _data[0];

background_hspeed[_bgIndex] = lerp(_data[1], _data[2], argument0);
background_vspeed[_bgIndex] = lerp(_data[3], _data[4], argument0);

#define ext_background_hspeed__
/// ext_background_hspeed__(value,bg)

background_hspeed[argument1] = argument0;

#define ext_background_vspeed__
/// ext_background_vspeed__(value,bg)

background_vspeed[argument1] = argument0;

#define ext_background_blend__
/// ext_background_blend__(amount,data[bg|col1|col2])

background_blend[argument1[0]] = merge_colour(argument1[1], argument1[2], argument0);

#define ext_background_alpha__
/// ext_background_alpha__(value,bg)

background_alpha[argument1] = argument0;

#define ext_background_colour__
/// ext_background_colour__(amount,data[col1|col2])

background_colour = merge_colour(argument1[0], argument1[1], argument0);

#define ext_view_angle__
/// ext_view_angle__(value,view)

view_angle[argument1] = argument0;

#define ext_view_xy__
/// ext_view_xy__(amount,data[view|x1|x2|y1|y2])

var _data = argument1;
var _viewIndex = _data[0];

view_xview[_viewIndex] = lerp(_data[1], _data[2], argument0);
view_yview[_viewIndex] = lerp(_data[3], _data[4], argument0);

#define ext_view_x__
/// ext_view_x__(value,view)

view_xview[argument1] = argument0;

#define ext_view_y__
/// ext_view_y__(value,view)

view_yview[argument1] = argument0;

#define ext_view_dimensions__
/// ext_view_dimensions__(amount,data[view|w1|w2|h1|h2])

var _data = argument1;
var _viewIndex = _data[0];

view_wview[_viewIndex] = lerp(_data[1], _data[2], argument0);
view_hview[_viewIndex] = lerp(_data[3], _data[4], argument0);

#define ext_view_width__
/// ext_view_width__(value,view)

view_wview[argument1] = argument0;

#define ext_view_height__
/// ext_view_height__(value,view)

view_hview[argument1] = argument0;

#define ext_view_port_position__
/// ext_view_port_position__(amount,data[view|x1|x2|y1|y2])

var _data = argument1;
var _viewIndex = _data[0];

view_xport[_viewIndex] = lerp(_data[1], _data[2], argument0);
view_yport[_viewIndex] = lerp(_data[3], _data[4], argument0);


#define ext_view_port_x__
/// ext_view_port_x__(value,view)

view_xport[argument1] = argument0;

#define ext_view_port_y__
/// ext_view_port_y__(value,view)

view_yport[argument1] = argument0;

#define ext_tile_position__
/// ext_tile_position__(amount,data[tile|x1|x2|y1|y2])

tile_set_position(argument1[0], lerp(argument1[1], argument1[2], argument0), lerp(argument1[3], argument1[4], argument0));

#define ext_tile_scale__
/// ext_tile_scale__(amount,data[tile|xscale1|xscale2|yscale1|yscale2])

tile_set_scale(argument1[0], lerp(argument1[1], argument1[2], argument0), lerp(argument1[3], argument1[4], argument0));

#define ext_tile_alpha__
/// ext_tile_alpha__(value,tile)

tile_set_alpha(argument1, argument0);


#define ext_tile_blend__
/// ext_tile_blend__(amount,data[tile|col1|col2])

tile_set_blend(argument1[0], merge_colour(argument1[1], argument1[2], argument0));

#define ext_tile_region__
/// ext_tile_region__(amount,data[tile|left1|left2|top1|top2|width1|width2|height1|height2])

var _data = argument1;
tile_set_region(_data[0], lerp(_data[1], _data[2], argument0), lerp(_data[3], _data[4], argument1), lerp(_data[5], _data[6], argument0), lerp(_data[7], _data[8], argument0));

#define ext_tilelayer_shift__
/// ext_tilelayer_shift__(amount,data[depth,x,y,offset])

var _amount = argument0;
var _data = argument1;
var _depth = _data[0];
var _xShift = _data[1];
var _yShift = _data[2];
var _oldAmount = _data[3];
var _useAmount = _amount-_oldAmount;

_data[@ 3] = _amount;
tile_layer_shift(_depth, lerp(0, _xShift, _useAmount), lerp(0, _yShift, _useAmount));


#define ext_tile_x__
/// ext_tile_x__(value,tile)

tile_set_position(argument1, argument0, tile_get_y(argument1));

#define ext_tile_y__
/// ext_tile_y__(value,tile)

tile_set_position(argument1, tile_get_x(argument1), argument0);

#define TGMS_ARRAY__
/// TGMS_ARRAY__(value,array)

argument1[@ 0] = argument0;