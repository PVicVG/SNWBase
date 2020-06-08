#define TGMS_TweenSystem
/// TweenSystem()

/*
    Scripts for setting global tweening system functionality
    and getting global system information.
*/

#define TweenSystemDeltaTime
/// TweenSystemDeltaTime(scaled)
/*
    @scaled = return delta time affected by system time scale?
    
    RETURN:
        real
        
    INFO:
        Returns the internal delta time updated by obj_SharedTweener.
        
    EXAMPLE:
        // Increase 'x' by 16 every second
        x += 16*TweenSystemDeltaTime(false);
*/

if (argument0)
{
    return SharedTweener().deltaTime * SharedTweener().timeScale;
}

return SharedTweener().deltaTime;

#define TweenSystemGetEnabled
/// TweenSystemGetEnabled()
/*
    RETURN:
        bool
        
    INFO:
        Returns true if tweening system is enabled
*/

return SharedTweener().isEnabled;

#define TweenSystemSetEnabled
/// TweenSystemSetEnabled(enable)
/*
    @enable = enable tweening system?
    
    RETURN:
        na
        
    INFO:
        Used to enable/disable the tweening system
*/

(SharedTweener()).isEnabled = argument0;
global.TGMS_IsEnabled = argument0;

#define TweenSystemGetTimeScale
/// TweenSystemGetTimeScale()
/*
    RETURN:
        real
        
    INFO:
        Returns the tweening engine's system-wide time scale
*/

return SharedTweener().timeScale;

#define TweenSystemSetTimeScale
/// TweenSystemSetTimeScale(scale)
/*
    @scale = time scale
    
    RETURN:
        na
        
    INFO:
        Sets the tweening engine's system-wide time scale.
        This will affect the time scale of all active tweens,
        independent of their own time scale.
*/

(SharedTweener()).timeScale = argument0;
global.TGMS_TimeScale = argument0;

#define TweenSystemGetUpdateInterval
/// TweenSystemGetUpdateInterval()

return SharedTweener().updateInterval;

#define TweenSystemSetUpdateInterval
/// TweenSystemSetUpdateInterval(steps)

(SharedTweener()).updateInterval = argument0;
global.TGMS_UpdateInterval = argument0;

#define TweenSystemCount
/// TweenSystemCount()
/*
    RETURN:
        real
    
    INFO:
        Returns total number of tweens in system, excluding those in inactive persistent rooms
*/

return ds_list_size(SharedTweener().tweens);


#define TweenSystemCountPlaying
/// TweenSystemCountPlaying()
/*
    RETURN:
        real
    
    INFO:
        Returns total number of tweens playing in system, excluding those in inactive persistent rooms
*/

var _tweens = SharedTweener().tweens;
var _total = 0;
var _index = -1;

repeat(ds_list_size(_tweens))
{
    var _tween = _tweens[| ++_index];
    _total += _tween[TWEEN.STATE] >= 0;
}

return _total;

#define TweenSystemCountStopped
/// TweenSystemCountStopped()
/*
    RETURN:
        real
    
    INFO:
        Returns total number of tweens stopped in system, excluding those in inactive persistent rooms
*/

var _tweens = SharedTweener().tweens; 
var _total = 0;
var _index = -1;   

repeat(ds_list_size(_tweens))
{
    var _tween = _tweens[| ++_index];
    _total += _tween[TWEEN.STATE] == TWEEN_STATE.STOPPED;
}

return _total;

#define TweenSystemCountPaused
/// TweenSystemCountPaused()
/*
    RETURN:
        real
    
    INFO:
        Returns total number of tweens paused in system, excluding those in inactive persistent rooms
*/

var _tweens = SharedTweener().tweens;
var _total = 0;
var _index = -1;

repeat(ds_list_size(_tweens))
{
    var _tween = _tweens[| ++_index];
    _total += _tween[TWEEN.STATE] == TWEEN_STATE.PAUSED;
}

return _total;

#define TweenSystemSetMinDeltaFPS
/// TweenSystemSetMinDeltaFPS(fps)
/*
    @fps = frame rate
    
    RETURN:
        na
        
    INFO:
        Sets the minimum frame rate allowed before delta timing begins to lag behind.
        It is advised to keep this number as default, unless you know what you're doing.
        DEFAULT: 10
*/

with(SharedTweener())
{
    global.TGMS_MinDeltaFPS = argument0;
    minDeltaFPS = argument0;
    maxDelta = 1/minDeltaFPS;
}

#define TweenSystemSetAutoCleanIterations
/// TweenSystemSetAutoCleanIterations(num)
/*
    @num = number of tweens to check each step
    
    RETURN:
        na
        
    INFO:
        Sets the number of tweens to be passively checked
        each step for automatic garbage collection.
        DEFAULT: 10
*/

with(SharedTweener())
{
    global.TGMS_AutoCleanIterations = argument0;
    autoCleanIterations = argument0;
}
#define TweenSystemFlushDestroyed
/// TweenSystemFlushDestroyed()
/*
    RETURN:
        na
        
    INFO:
        Overrides passive memory manager by immediately removing
        all destroyed tweens from the system
*/

if (instance_exists(global.TGMS_SharedTweener))
{
    global.TGMS_SharedTweener.flushDestroyed = true;
}

#define TweenSystemClearRoom
/// TweenSystemClearRoom(room)
/*
    @room = persistent room
    
    RETURN:
        na

    INFO:
        Clears persistent room's stored tween data
*/

TGMS_ClearRoom(argument0);

#define TweenSystemClearAllRooms
/// TweenSystemClearAllRooms()
/*
    RETURN:
        na
        
    INFO:
        Clears stored tween data from all persistent rooms  
*/

TGMS_ClearAllRooms();