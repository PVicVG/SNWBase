#define TGMS_TweenGet
/// TweenGet()


#define TweenGetTarget
/// TweenGetTarget(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return noone;

return _t[TWEEN.TARGET];

#define TweenGetProperty
/// TweenGetProperty(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return null__;

return _t[TWEEN.PROPERTY_RAW];

#define TweenGetDelta
/// TweenGetDelta(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return _t[TWEEN.DELTA];

#define TweenGetStart
/// TweenGetStart(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.START];

#define TweenGetDestination
/// TweenGetDestination(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.START] + _t[TWEEN.CHANGE];

#define TweenGetDuration
/// TweenGetDuration(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.DURATION];

#define TweenGetEase
/// TweenGetEase(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return EaseLinear;

return _t[TWEEN.EASE];

#define TweenGetMode
/// TweenGetMode(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return TWEEN_MODE_ONCE;

return _t[TWEEN.MODE];

#define TweenGetChange
/// TweenGetChange(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.CHANGE];

#define TweenGetTime
/// TweenGetTime(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.TIME];

#define TweenGetTimeScale
/// TweenGetTimeScale(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 1;

return _t[TWEEN.TIME_SCALE] * _t[TWEEN.DIRECTION];

#define TweenGetState
/// TweenGetState(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return TWEEN_STATE.STOPPED;

return _t[TWEEN.STATE];

#define TweenGetGroup
/// TweenGetGroup(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return -1;

return _t[TWEEN.GROUP];

#define TweenGetExtData
/// TweenGetExtData(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.DATA];

#define TweenGetDelay
/// TweenGetDelay(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _delay = _t[TWEEN.DELAY];

if (_delay <= 0) { return 0; }
else             { return _delay; }

#define TweenGetDelayStart
/// TweenGetDelayStart(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.DELAY_START];