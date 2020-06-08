#define TGMS_Event
/*
    It is possible to execute specified scripts for various tween events using callbacks.
    Up to 12 arguments can be passed to callback scripts.
    Multiple callbacks can be added to the same tween event.
    
    The "event" parameter can take any of the following TWEEN EVENT CONSTANTS:
    
    [Tween Event Constants]
        
        TWEEN_EV_PLAY       ... when tween is played
        TWEEN_EV_FINISH     ... when tween finishes with modes ONCE|BOUNCE
        TWEEN_EV_CONTINUE   ... when tween continues with modes BOUNCE|PATROL|LOOP|REPEAT
        TWEEN_EV_STOP       ... when tween is stopped
        TWEEN_EV_PAUSE      ... when tween is paused
        TWEEN_EV_RESUME     ... when tween is resumed
        TWEEN_EV_REVERSE    ... when tween is reversed
        
    [Example]
    
        // Fire a tween and store tween id handle
        tween = TweenFire(id, x__, EaseLinear, TWEEN_MODE_ONCE, true, 0.0, 1.0, x, mouse_x);
        
        // Have "Finished" message appear when tween finishes
        TweenAddCallback(tween, TWEEN_EV_FINISH, id, ShowMessage, "Finished!");
*/

#define TGMS_ExecuteEvent
/// TGMS_ExecuteEvent(event_list,event_type)
/*
    DON'T CALL THIS DIRECTLY!!!
*/

// IF events and event type initialized...
if (argument0 != -1)
{
    if (ds_map_exists(argument0, argument1))
    {
        // Get event data
        var _event = ds_map_find_value(argument0, argument1);
        
        // Iterate through all event callbacks (isEnabled * event list size)
        var _index = 0;
        repeat(_event[| 0] * (ds_list_size(_event)-1))
        {
            var _cb = _event[| ++_index];             // Cache callback
            var _target = _cb[TWEEN_CALLBACK.TARGET]; // Cache target
        
            with(_target) // Using target environment...
            {
                // Execute callback script with proper number of arguments
                switch(array_length_1d(_cb) * _cb[TWEEN_CALLBACK.ENABLED])
                {
                case TWEEN_CALLBACK.ARG0: script_execute(_cb[TWEEN_CALLBACK.SCRIPT]); break;
                case TWEEN_CALLBACK.ARG1: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0]); break;
                case TWEEN_CALLBACK.ARG2: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1]); break;
                case TWEEN_CALLBACK.ARG3: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2]); break;
                case TWEEN_CALLBACK.ARG4: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3]); break;
                case TWEEN_CALLBACK.ARG5: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4]); break;
                case TWEEN_CALLBACK.ARG6: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5]); break;
                case TWEEN_CALLBACK.ARG7: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6]); break;
                case TWEEN_CALLBACK.ARG8: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7]); break;
                case TWEEN_CALLBACK.ARG9: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8]); break;
                case TWEEN_CALLBACK.ARG10: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9]); break;
                case TWEEN_CALLBACK.ARG11: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9], _cb[TWEEN_CALLBACK.ARG10]); break;
                case TWEEN_CALLBACK.ARG12: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9], _cb[TWEEN_CALLBACK.ARG10], _cb[TWEEN_CALLBACK.ARG11]); break;
                case TWEEN_CALLBACK.ARG13: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9], _cb[TWEEN_CALLBACK.ARG10], _cb[TWEEN_CALLBACK.ARG11], _cb[TWEEN_CALLBACK.ARG12]); break;   
                }
            }
            
            // IF target does not exist
            if (instance_exists(_target) == false)
            {
                // Attempt to activate target
                instance_activate_object(_target);
                
                // IF target now exists
                if (instance_exists(_target))
                {
                    // Put target back to deactivated state
                    instance_deactivate_object(_target);
                }
                else
                {
                    // Delete callback from event list -- decrement loop index
                    ds_list_delete(_event, _index--);
                }
            }
        }
    }
}

#define TweenEventClear
/// TweenEventClear(tween,event)
/*
    @tween = tween id
    @event = tween event constant -- TWEEN_EV_****
    
    RETURN:
        NA
        
    INFO:
        Removes all callbacks from the specified tween event
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return 0; }

var _events = _t[TWEEN.EVENTS];

if (_events != -1)
{    
    if (ds_map_exists(_events, argument1))
    {
        var _event = _events[? argument1]; 
        var _index = 0;
        
        repeat(ds_list_size(_event)-1)
        {
            // Get callback
            var _cb = _event[| ++_index];
            // Invalidate target
            _cb[@ TWEEN_CALLBACK.TARGET] = noone;
        }
    }
}

#define TweenEventIsEnabled
/// TweenEventIsEnabled(tween,event)

var _t= TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return 0; }

var _events = _t[TWEEN.EVENTS];
var _eventType = argument1;

// Return true if events don't exist
if (_events == -1) { return true; }

// Return true if event type doesn't exist
if (ds_map_exists(_events, _eventType) == false) { return true; }

// Return event's [enabled] state boolean
return ds_list_find_value(_events[? _eventType], 0);



#define TweenEventEnable
/// TweenEventEnable(tween,event,enable)
/*
    @tween  = tween id
    @event  = tween event constant -- TWEEN_EV_****
    @enable = enable the tween event?
    
    RETURN:
        NA
        
    INFO:
        Used to enable/disable specified tween event
*/

var _t= TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return 0; }

var _EVENT_TYPE = argument1;
var _enable = argument2;
var _events = _t[TWEEN.EVENTS];

// Create and assign events map if it doesn't exist
if (_events == -1)
{
    _events = ds_map_create();
    _t[@ TWEEN.EVENTS] = _events;
}

if (ds_map_exists(_events, _EVENT_TYPE) == false)
{
    // Create event list
    var _event = ds_list_create();
    // Add event to events map
    _events[? _EVENT_TYPE] = _event;
}

// Set tween event state
var _event = _events[? _EVENT_TYPE];
_event[| 0] = _enable;

#define TweenEventEnableAll
/// TweenEventEnableAll(event,enable,deactivated)
/*
    @event       = tween event constant -- TWEEN_EV_****
    @enable      = enable the tween event?
    @deactivated = affect tweens associated with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Used to enable/disable specified event for all tweens
*/

TweensExecute(TWEENS_ALL, 0, argument2, TweenEventEnable, argument0, argument1);


#define TweenEventEnableGroup
/// TweenEventEnableGroup(group,event,enable,deactivated)
/*
    @group       = tween group
    @event       = tween event constant -- TWEEN_EV_****
    @enable      = enable the tween event?
    @deactivated = affect tweens associated with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Used to enable/disable specified event for all tweens associated with group
*/

TweensExecute(TWEENS_GROUP, argument0, argument3, TweenEventEnable, argument1, argument2);

#define TweenEventEnableTarget
/// TweenEventEnableTarget(target,event,enable,deactivated)
/*
    @target      = target instance id or object index
    @event       = tween event constant -- TWEEN_EV_****
    @enable      = enable the tween event?
    @deactivated = affect tweens with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Used to enable/disable specified event for all tweens associated with target
*/

TweensExecute(TWEENS_TARGET, argument0, argument3, TweenEventEnable, argument1, argument2);