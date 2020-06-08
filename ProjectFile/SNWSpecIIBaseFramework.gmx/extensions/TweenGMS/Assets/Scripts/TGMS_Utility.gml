#define TGMS_Utility


#define TGMS_Init
/// TGMS_Init()
/*
    !DO NOT CALL THIS!
    Automatically called by the extension.
*/

//-----------------------------------------------
// Declare default global system-wide settings
//-----------------------------------------------
global.TGMS_SharedTweener = noone;    // Declare global variable for holding shared tweener instance
global.TGMS_IsEnabled = true;         // System's active state boolean
global.TGMS_TimeScale = 1.0;          // Effects overall speed of how fast system plays tweens/delays
global.TGMS_MinDeltaFPS = 10;         // The lowest framerate before delta tweens will begin to lag behind (Ideally, keep between 10-15)
global.TGMS_UpdateInterval = 1.0;     // Sets how often (in steps) system will update (1 = default, 2 = half speed, 0.5 = double speed) DO NOT set as 0 or below!
global.TGMS_AutoCleanIterations = 10; // Limits, each step, number of tweens passively checked by memory manager (Default:10)
global.TGMS_SimpleDelta = false;      // Simple tweens use delta time?

//---------------------------
// Create ID Maps
//---------------------------
global.TGMS_MAP_TWEEN = ds_map_create();

//--------------------------------
// Initiate ID Indexes
//--------------------------------
global.TGMS_INDEX_TWEEN = 1;

//-------------------------------
// Declare Enum Constants
//-------------------------------
// CALLBACK DATA
enum TWEEN_CALLBACK{TWEEN,ENABLED,TARGET,SCRIPT,ARG0,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8,ARG9,ARG10,ARG11,ARG12,ARG13,ARG14,ARG15};

// TWEEN STATES
enum TWEEN_STATE{DESTROYED=-4,STOPPED=-10,PAUSED=-11,DELAYED=-12};

// TWEEN DATA
enum TWEEN
{
    TIME,
    START,
    CHANGE,
    DURATION,
    STATE,
    TIME_SCALE,
    DELTA,
    EASE,
    PROPERTY,
    PROPERTY_RAW,
    TARGET,
    GROUP,
    DIRECTION,
    EVENTS,
    DESTROY,
    SIMPLE_KEY,
    MODE,
    DATA,
    DELAY,
    DELAY_START,
    ID,
    DATA_SIZE
};

//---------------------------
// Create Default Tween
//---------------------------
global.TGMS_TweenDefault[TWEEN.ID] = 0;
global.TGMS_TweenDefault[TWEEN.TARGET] = noone;
global.TGMS_TweenDefault[TWEEN.EASE] = EaseLinear;
global.TGMS_TweenDefault[TWEEN.TIME] = 0;
global.TGMS_TweenDefault[TWEEN.START] = 0;
global.TGMS_TweenDefault[TWEEN.CHANGE] = 1;
global.TGMS_TweenDefault[TWEEN.DURATION] = 1;
global.TGMS_TweenDefault[TWEEN.PROPERTY] = null__;
global.TGMS_TweenDefault[TWEEN.PROPERTY_RAW] = 0;
global.TGMS_TweenDefault[TWEEN.STATE] = TWEEN_STATE.STOPPED;
global.TGMS_TweenDefault[TWEEN.TIME_SCALE] = 1;
global.TGMS_TweenDefault[TWEEN.DELTA] = false;
global.TGMS_TweenDefault[TWEEN.GROUP] = 0;
global.TGMS_TweenDefault[TWEEN.EVENTS] = -1;
global.TGMS_TweenDefault[TWEEN.SIMPLE_KEY] = -1;
global.TGMS_TweenDefault[TWEEN.DESTROY] = 0;
global.TGMS_TweenDefault[TWEEN.DIRECTION] = 1;
global.TGMS_TweenDefault[TWEEN.MODE] = TWEEN_MODE_ONCE;
global.TGMS_TweenDefault[TWEEN.DATA] = 0;
global.TGMS_TweenDefault[TWEEN.DELAY] = -10;
global.TGMS_TweenDefault[TWEEN.DELAY_START] = 0;

// Assign default tween as first in global id map
global.TGMS_MAP_TWEEN[? 1] = global.TGMS_TweenDefault;


#define TGMS_Final
/// TGMS_Final()
/*
    !DO NOT CALL THIS!
    Automatically called by the extension.
*/

with(obj_SharedTweener) instance_destroy(); // Destroy shared tweener
ds_map_destroy(global.TGMS_MAP_TWEEN);      // Destroy global tween id map

#define TweensExecute
/// TweensExecute(TWEENS_*,data,deactivated,script,arg0,...)
/*
    @tweens         Tweens to select for performing script (0=TWEENS_ALL, 1=TWEENS_GROUP, 2=TWEEN_TARGET)
    @data           Relevant group or target when using TWEENS_GROUP or TWEENS_TARGET -- not important when using TWEENS_ALL
    @deactivated    Include tweens associated with deactivated targets?
    @script         Script to execute for each tween
    @arg0...        (optional) Arguments to pass to executed script (up to 3)
    
    RETURN:
        na
        
    INFO:
        Iterates through all relevant tweens and executes a specified script for each.
        The following constants can be used for selecting tweens:
        
        0 = TWEENS_ALL
        1 = TWEENS_GROUP
        2 = TWEENS_TARGET
        
        Currently takes only a max of 3 optional arguments.
        
    Example:
        // Execute 'TweenStop' for all tweens, including those with deactivated targets
        TweensExecute(TWEENS_ALL, 0, true, TweenStop);
        
        // Execute 'TweenPause' with tweens belonging to group 2
        TweensExecute(TWEENS_GROUP, 2, false, TweenPause)
        
        // Execute 'TweenSetTime' for tweens associated with obj_Jumpy
        TweensExecute(TWEENS_TARGET, obj_Jumpy, false, TweenSetTime, 2.0);
*/

var _selection      = argument[0];
var _selectionData  = argument[1];
var _deactivated    = argument[2];
var _script         = argument[3];

var _argCount = argument_count-4;
var _arg0,_arg1,_arg2;

switch(_argCount)
{
    case 3: _arg2 = argument[6];
    case 2: _arg1 = argument[5];
    case 1: _arg0 = argument[4];
}

var _tweens = SharedTweener().tweens;
var _tIndex = 0;

switch(_selection)
{
    case TWEENS_ALL:
        switch(_argCount)
        {    
        case 0:
            repeat(ds_list_size(_tweens))
            {  
                var _t = _tweens[| _tIndex++];
                if (TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t);
            }
        break;
        case 1:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0);
            }
        break;
        case 2:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0, _arg1);
            }
        break;
        case 3:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0, _arg1, _arg2);
            }
        break;
        }
    break;
    
    case TWEENS_GROUP:
        switch(_argCount)
        {    
        case 0:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (_t[TWEEN.GROUP] == _selectionData && TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t);
            }
        break;
        case 1:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (_t[TWEEN.GROUP] == _selectionData && TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0);
            }
        break;
        case 2:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (_t[TWEEN.GROUP] == _selectionData && TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0, _arg1);
            }
        break;
        case 3:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                if (_t[TWEEN.GROUP] == _selectionData && TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) script_execute(_script, _t, _arg0, _arg1, _arg2);
            }
        break;
        }
    break;
    
    case TWEENS_TARGET:
        switch(_argCount)
        {    
        case 0:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                var _target = _t[TWEEN.TARGET];
                if (_target == _selectionData || _target.object_index == _selectionData || object_is_ancestor(_target.object_index, _selectionData))
                {
                    if (TGMS_TargetExists(_target, _deactivated)) script_execute(_script, _t);
                }
            }
        break;
        case 1:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                var _target = _t[TWEEN.TARGET];
                if (_target == _selectionData || _target.object_index == _selectionData || object_is_ancestor(_target.object_index, _selectionData))
                {
                    if (TGMS_TargetExists(_target, _deactivated)) script_execute(_script, _t, _arg0);
                }
            }
        break;
        case 2:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                var _target = _t[TWEEN.TARGET];
                if (_target == _selectionData || _target.object_index == _selectionData || object_is_ancestor(_target.object_index, _selectionData))
                {
                    if (TGMS_TargetExists(_target, _deactivated)) script_execute(_script, _t, _arg0, _arg1);
                }
            }
        break;
        case 3:
            repeat(ds_list_size(_tweens))
            {
                var _t = _tweens[| _tIndex++];
                var _target = _t[TWEEN.TARGET];
                if (_target == _selectionData || _target.object_index == _selectionData || object_is_ancestor(_target.object_index, _selectionData))
                {
                    if (TGMS_TargetExists(_target, _deactivated)) script_execute(_script, _t, _arg0, _arg1, _arg2);
                }
            }
        break;
        }
    break;
}

#define TGMS_FetchTween
/// TGMS_FetchTween(tween_id)

if (is_array(argument0)) { return argument0; }

if (is_real(argument0))
{
    if (ds_map_exists(global.TGMS_MAP_TWEEN, argument0))
    {
        return global.TGMS_MAP_TWEEN[? argument0];
    }

    // Show "invalid tween id" error message
    show_error("!!! INVALID TWEEN ID !!!
    " ,false);
}

return undefined;

#define TGMS_TargetExists
/// TGMS_TargetExists(target,deactivated)

if (argument1)
{
    if (instance_exists(argument0)) { return true; }

    instance_activate_object(argument0);
    
    if (instance_exists(argument0))
    {
        instance_deactivate_object(argument0);
        return true;
    }
}

return (instance_exists(argument0));

#define TGMS_ClearRoom
/// TGMS_ClearRoom(room)
/*
    @room = persistent room
    
    RETURN:
        na

    INFO:
        Clears persistent room's stored tween data
*/


var _sharedTweener = global.TGMS_SharedTweener;

if (_sharedTweener == noone) return 0;

var _simpleTweens = _sharedTweener.simpleTweens;
var _pRoomTweens = _sharedTweener.pRoomTweens;
var _pRoomDelays = _sharedTweener.pRoomDelays;
var _key = argument0;

// Destroy tweens for persistent room
if (ds_map_exists(_pRoomTweens, _key))
{
    // Delete stored delays
    ds_queue_destroy(ds_map_find_value(_pRoomDelays, _key));
    ds_map_delete(_pRoomDelays, _key)
    
    // Get stored tweens queue
    var _queue = ds_map_find_value(_pRoomTweens, _key);
    
    // Destroy all stored tweens in queue
    repeat(ds_queue_size(_queue))
    {   
        var _t = ds_queue_dequeue(_queue); // Get next tween from room's queue
        
        // Invalidate tween handle
        if (ds_map_exists(global.TGMS_MAP_TWEEN, _t[TWEEN.ID]))
        {
            ds_map_delete(global.TGMS_MAP_TWEEN, _t[TWEEN.ID]);
        }
        
        // Delete simple tween data
        if (ds_map_exists(_simpleTweens, _t[TWEEN.SIMPLE_KEY]))
        {
            ds_map_delete(_simpleTweens, _t[TWEEN.SIMPLE_KEY]);
        }
        
        _t[@ TWEEN.STATE] = TWEEN_STATE.DESTROYED; // Set state as destroyed
        _t[@ TWEEN.ID] = undefined;                // Nullify self reference
        
        // Destroy tween events if events map exists
        if (_t[TWEEN.EVENTS] != -1)
        {
            var _events = _t[TWEEN.EVENTS];        // Cache events
            var _key = ds_map_find_first(_events); // Find key to first event
            
            // Cycle through and destroy all events
            repeat(ds_map_size(_events))
            {
                ds_list_destroy(_events[? _key]);       // Destroy event list
                _key = ds_map_find_next(_events, _key); // Find key for next event
            }
            
            ds_map_destroy(_events); // Destroy events map
        }
    }
    
    ds_queue_destroy(_queue);          // Destroy room's queue for stored tweens
    ds_map_delete(_pRoomTweens, _key); // Delete persistent room id from stored tweens map
}



#define TGMS_ClearAllRooms
/// TGMS_ClearAllRooms()
/*
    RETURN:
        na
        
    INFO:
        Clears stored tween data from all persistent rooms  
*/

if (global.TGMS_SharedTweener != noone)
{
    var _tweener = global.TGMS_SharedTweener;
    var _pRoomTweens = _tweener.pRoomTweens;
    
    repeat(ds_map_size(_pRoomTweens))
    {
        TGMS_ClearRoom(ds_map_find_first(_pRoomTweens));
    }
}

#define SharedTweenerActivate
/// SharedTweenerActivate()

instance_activate_object(obj_SharedTweener);

#define SharedTweenerDestroy
/// SharedTweenerDestroy()

with(global.TGMS_SharedTweener) instance_destroy();


#define TweenForcePropertyUpdate
/// TweenForcePropertyUpdate(tween)
/*
    Forces a tween to re-calculate and update its property
*/

var _t = TGMS_FetchTween(argument0);

if (_t[TWEEN.STATE] >= 0 && _t[TWEEN.DURATION]!= 0)
{
    if (_t[TWEEN.PROPERTY] != null__) script_execute(_t[TWEEN.PROPERTY], script_execute(_t[TWEEN.EASE], clamp(_t[TWEEN.TIME], 0, _t[TWEEN.DURATION]), _t[TWEEN.START], _t[TWEEN.CHANGE], _t[TWEEN.DURATION]), _t[TWEEN.DATA], _t[TWEEN.TARGET]);
}

#define TGMS_EventUser
/// TGMS_EventUser(user_event)

event_user(argument0);