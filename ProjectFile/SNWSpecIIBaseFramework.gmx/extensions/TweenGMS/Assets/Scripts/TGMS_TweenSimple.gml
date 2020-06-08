#define TGMS_TweenSimple
/// TGMS_TweenSimple()

#define TweenSimpleUseDelta
/// TweenSimpleUseDelta(bool)

global.TGMS_SimpleDelta = argument0;

#define TGMS_OverrideProperty
/// TGMS_OverrideProperty(target,property,tween)

var _key = string(argument0) + "." + string(argument1);
var _sharedTweener = SharedTweener();

if (ds_map_exists(_sharedTweener.simpleTweens, _key)) 
{
    TweenStop(_sharedTweener.simpleTweens[? _key]);
}

var _t = TGMS_FetchTween(argument2);
if (is_undefined(_t)) { return 0; }

_t[@ TWEEN.SIMPLE_KEY] = _key;
_sharedTweener.simpleTweens[? _key] = _t[TWEEN.ID];

#define TweenSimpleMove
/// TweenSimpleMove(x1,y1,x2,y2,dur,ease[,delay])

var _delay = 0;
if (argument_count == 7) _delay = argument[6];

var _tween = TweenFire(id, ext_xy__, argument[5], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[4], 0, 1, argument[0], argument[2], argument[1], argument[3]);    
TGMS_OverrideProperty(id, ext_xy__, _tween);
return _tween;


#define TweenSimpleMoveInt
/// TweenSimpleMoveInt(x1,y1,x2,y2,dur,ease[,delay])

var _delay = 0;
if (argument_count == 7) _delay = argument[6];

var _tween = TweenFire(id, ext_roundxy__, argument[5], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[4], 0, 1, argument[0], argument[2], argument[1], argument[3]);    
TGMS_OverrideProperty(id, ext_roundxy__, _tween);
return _tween;


#define TweenSimpleScale
/// TweenSimpleScale(xScale1,yScale1,xScale2,yScale2,dur,ease[,delay])

var _delay = 0;
if (argument_count == 7) _delay = argument[6];

var _tween = TweenFire(id, ext_image_xyscale__, argument[5], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[4], 0, 1, argument[0], argument[2], argument[1], argument[3]);    
TGMS_OverrideProperty(id, ext_image_xyscale__, _tween);
return _tween;

#define TweenSimpleRotate
/// TweenSimpleRotate(angle1,angle2,dur,ease[,delay])

var _delay = 0;
if (argument_count == 5) _delay = argument[4];

var _tween = TweenFire(id, image_angle__, argument[3], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[2], argument[0], argument[1]);    
TGMS_OverrideProperty(id, image_angle__, _tween);
return _tween;

#define TweenSimpleTurn
/// TweenSimpleTurn(dir1,dir2,dur,ease[,delay])

var _delay = 0;
if (argument_count == 5) _delay = argument[4];

var _tween = TweenFire(id, direction__, argument[3], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[2], argument[0], argument[1]);    
TGMS_OverrideProperty(id, direction__, _tween);
return _tween;

#define TweenSimpleFade
/// TweenSimpleFade(alpha1,alpha2,dur,ease[,delay])

var _delay = 0;
if (argument_count == 5) _delay = argument[4];

var _tween = TweenFire(id, image_alpha__, argument[3], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[2], argument[0], argument[1]);    
TGMS_OverrideProperty(id, image_alpha__, _tween);
return _tween;


#define TweenSimpleColour
/// TweenSimpleColour(col1,col2,dur,ease[,delay])

var _delay = 0;
if (argument_count == 5) _delay = argument[4];

var _tween = TweenFire(id, ext_image_blend__, argument[3], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[2], 0, 1, argument[0], argument[1]);    
TGMS_OverrideProperty(id, ext_image_blend__, _tween);
return _tween;


#define TweenSimpleImageCycle
/// TweenSimpleImageCycle(index1,index2,dur,ease[,delay])

var _delay = 0;
if (argument_count == 5) _delay = argument[4];

var _tween = TweenFire(id, image_index__, argument[3], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[2], argument[0], argument[1]);    
TGMS_OverrideProperty(id, image_index__, _tween);
return _tween;


#define TweenSimpleSpeedRamp
/// TweenSimpleSpeedRamp(speed1,speed2,dur,ease[,delay])

var _delay = 0;
if (argument_count == 5) _delay = argument[4];

var _tween = TweenFire(id, speed__, argument[3], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[2], argument[0], argument[1]);    
TGMS_OverrideProperty(id, speed__, _tween);
return _tween;


#define TweenSimpleHVSpeedRamp
/// TweenSimpleHVSpeedRamp(hspeed1,vspeed1,hspeed2,vspeed2,dur,ease[,delay])

var _delay = 0;
if (argument_count == 7) _delay = argument[6];

var _tween = TweenFire(id, ext_hvspeed__, argument[5], TWEEN_MODE_ONCE, global.TGMS_SimpleDelta, _delay, argument[4], 0, 1, argument[0], argument[2], argument[1], argument[3]);    
TGMS_OverrideProperty(id, ext_hvspeed__, _tween);
return _tween;