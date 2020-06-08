#define TGMS_TweenBool


#define TweenExists
/// TweenExists(tween)
/*
    @tween      tween id
    
    RETURN:
        bool
        
    INFO:
        Returns true if the specified tween exists
        
    Example:
        if (TweenExists(tween))
        {
            TweenStop(tween);
        }
*/

var _t;

if (is_real(argument0))
{
    if (ds_map_exists(global.TGMS_MAP_TWEEN, argument0)) { _t = global.TGMS_MAP_TWEEN[? argument0]; }
    else                                                 { return false; }
}
else
if (is_array(argument0))
{
    _t = argument0;
    if (_t[TWEEN.STATE] == TWEEN_STATE.DESTROYED) { return false; }
}
else
{
    return false;
}
    
var _target = _t[TWEEN.TARGET];

if (instance_exists(_target)) { return true; }

instance_activate_object(_target);

if (instance_exists(_target))
{
    instance_deactivate_object(_target);
    return true;
}



#define TweenIsActive
/// TweenIsActive(tween)
/*
    @tween      tween id
    
    RETURN:
        bool
        
    INFO:
        Returns true if tween is playing OR actively processing delay
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return (_t[TWEEN.STATE] >= 0 || _t[TWEEN.STATE] == TWEEN_STATE.DELAYED);

#define TweenIsPlaying
/// TweenIsPlaying(tween)
/*
    @tween      tween id
    
    RETURN:
        bool
        
    INFO:
        Returns true if the specified tween is actively playing
        ** Will NOT return true if tween is processing delay **
        
    Example:
        if (TweenIsPlaying(tween))
        {
            TweenPause(tween);
        }
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return _t[TWEEN.STATE] >= 0;

#define TweenIsStopped
/// TweenIsStopped(tween)
/*
    @tween      tween id
    
    RETURN:
        bool
        
    INFO:
        Returns true if the specified tween is stopped
        
    Example:
        if (TweenIsStopped(tween))
        {
            TweenPlay(tween);
        }
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return _t[TWEEN.STATE] == TWEEN_STATE.STOPPED;


#define TweenIsPaused
/// TweenIsPaused(tween)
/*
    @tween      tween id
    
    RETURN:
        bool
        
    INFO:
        Returns true if the specified tween is paused
        
    Example:
        if (TweenIsPaused(tween))
        {
            TweenResume(tween);
        }
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return _t[TWEEN.STATE] == TWEEN_STATE.PAUSED;