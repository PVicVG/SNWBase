#define TGMS_TweenSet


#define TweenSetTarget
/// TweenSetTarget(tween,instance)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _target = argument1.id;
    
if (_t[TWEEN.TARGET] != noone)
{
    _t[@ TWEEN.TARGET] = _target;
    
    if (_t[TWEEN.STATE] >= 0) { _t[@ TWEEN.STATE] = _target; }
    
    if (!is_array(_t[TWEEN.PROPERTY_RAW])) { _t[@ TWEEN.DATA] = _target; } 
}

#define TweenSetProperty
/// TweenSetProperty(tween,property)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _property = argument1;
_t[@ TWEEN.PROPERTY_RAW] = argument1;

if (is_array(_property))
{
    if (array_length_1d(_property) == 1) // Array property
    {
        _t[@ TWEEN.DATA] = _property;
        _t[@ TWEEN.PROPERTY] = TGMS_ARRAY__;
    }
    else // Extended property
    {
        _t[@ TWEEN.DATA] = _property[1];
        _t[@ TWEEN.PROPERTY] = _property[0];
    }
}
else if (is_real(_property)) // Standard property
{
    _t[@ TWEEN.PROPERTY] = _property;
    _t[@ TWEEN.DATA] = _t[TWEEN.TARGET];
}
else // Null property
{
    _t[@ TWEEN.DATA] = 0;
    _t[@ TWEEN.PROPERTY] = null__;
}

#define TweenSetDelta
/// TweenSetDelta(tween,bool)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.DELTA] = argument1;


#define TweenSetStart
/// TweenSetStart(tween,start)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _dest = _t[TWEEN.START] + _t[TWEEN.CHANGE];
_t[@ TWEEN.START] = argument1;
_t[@ TWEEN.CHANGE] = _dest - argument1;

#define TweenSetDestination
/// TweenSetDestination(tween,destination)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.CHANGE] = argument1 -_t[TWEEN.START];


#define TweenSetDuration
/// TweenSetDuration(tween,duration)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;
    
_t[@ TWEEN.DURATION] = argument1;

#define TweenSetEase
/// TweenSetEase(tween,ease)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.EASE] = argument1;
TweenForcePropertyUpdate(_t);

#define TweenSetMode
/// TweenSetMode(tween,mode)
 
var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.MODE] = argument1;

#define TweenSetGroup
/// TweenSetGroup(tween,group)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.GROUP] = argument1;


#define TweenSetTime
/// TweenSetTime(tween,time)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

// Assign new time value
_t[@ TWEEN.TIME] = argument1;
TweenForcePropertyUpdate(_t);

#define TweenSetTimeScale
/// TweenSetTimeScale(tween,scale)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.TIME_SCALE] = argument1 * _t[TWEEN.DIRECTION];


#define TweenSetTimeScaleAll
/// TweenSetTimeScaleAll(scale,deactivated)

TweensExecute(TWEENS_ALL, 0, argument1, TweenSetTimeScale, argument0);

#define TweenSetTimeScaleGroup
/// TweenSetTimeScaleGroup(group,scale,deactivated)

TweensExecute(TWEENS_GROUP, argument0, argument2, TweenSetTimeScale, argument1);

#define TweenSetTimeScaleTarget
/// TweenSetTimeScaleTarget(target,scale,deactivated)

TweensExecute(TWEENS_TARGET, argument0, argument2, TweenSetTimeScale, argument1);
#define TweenSetDelay
/// TweenSetDelay(tween,delay)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

if (_t[TWEEN.DELAY] > 0) { _t[@ TWEEN.DELAY] = argument1; }

#define TweenSetDelayStart
/// TweenSetDelayStart(tween,delay)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.DELAY_START] = argument1;
#define TweenSetExtData
/// TweenSetExtData(tween,arg0,arg1,...)
/*
    Updates a tween's extended property setter data
*/

var _t = TGMS_FetchTween(argument[0]);

if (argument_count == 2)
{
    _args = argument[1];
}
else
{
    var _args, _argIndex = -1;
    repeat(argument_count-1)
    {
        ++_argIndex;
        _args[_argIndex] = argument[_argIndex+1];
    }
}

var _propRaw = _t[TWEEN.PROPERTY_RAW];
_propRaw[@ 1] = _args;
_t[@ TWEEN.DATA] = _args;