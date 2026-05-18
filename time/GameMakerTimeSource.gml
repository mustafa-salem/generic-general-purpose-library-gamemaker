// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

#macro TimeSource  TimeSourceGeneric

#macro TIME_SOURCE_CONTROLLER_GENERIC INITIALIZED_CONSTRUCTOR(TimeSourceControllerGeneric)

#macro DEFAULT_PARENT_TIME_SOURCE_GENERIC      time_source_global
#macro DEFAULT_PERIOD_TIME_SOURCE_GENERIC      1
#macro DEFAULT_UNITS_TIME_SOURCE_GENERIC       time_source_units_frames
#macro DEFAULT_REPETITIONS_TIME_SOURCE_GENERIC 1
#macro DEFAULT_EXPIRY_TYPE_TIME_SOURCE_GENERIC time_source_expire_after

/// GAMEMAKER_TIMESOURCE_DEFAULT_PARENT

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// This function is used to create a Time Source
/// @param {callable} callable
/// @param {type} delay_seconds
/// @param {type} delay_frames
/// @param {type} arguments
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_call_later(parameters = {}) {
    arguments.creation_scope = other
    var _time_source = new TimeSourceGeneric(arguments).start()
    TIME_SOURCE_CONTROLLER_GENERIC.add_garbage_collection({ time_source : _time_source })
    return _time_source
}

/// This script function serves as a proxy for the static method function:
/// TimeSourceGeneric.create
function gamemaker_timesource_create(arguments = {}) {
    arguments.creation_scope = other
    return new TimeSourceGeneric(arguments)

    var _arguments = TimeSourceGeneric.private.creation_arguments(arguments)
    private.time_source_id = time_source_create(
        _arguments.parent,
        _arguments.period,
        _arguments.units,
        _arguments.callback,
        _arguments.arguments,
        _arguments.repetitions,
        _arguments.expiry_type,
    )
}

/// @param {Struct} arguments
/// @param {Struct.TimeSourceGeneric|Id.TimeSource} arguments.time_source
/// @param {Struct.TimeSourceGeneric|Id.TimeSource} arguments.parent
/// The parent time source of the new time source.
/// @param {Real} arguments.period
/// The period that the time source runs for.
/// @param {Constant.TimeSourceUnit} arguments.units
/// The units that the given period is in.
/// @param {Real|Infinity} arguments.repetitions
/// The number of times the Time Source should repeat,
/// or Infinity for indefinite repetition.
/// @param {Constant.TimeSourceExpiry} arguments.expiry_type
/// Whether the Time Source expires on the frame nearest to its expiry,
/// or on the next frame.
/// @param {Function} arguments.callback
/// The method or script function to call when the Time Source expires.
/// @param {Array<Any>} arguments.arguments
/// An array containing the arguments to pass into the method
/// @param {} arguments.scope
/// @returns {type}
function gamemaker_timesource_destroy(parameters = {}) {
    time_source_destroy(parameters.time_source, parameters.destroy_children)
    return undefined
}

/// This script function serves as a proxy for the static method function:
/// TimeSourceGeneric.exists
/// @param {type} parameter_name <parameter_description>
/// @returns {type}
function gamemaker_timesource_exists(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    return time_source_exists(_time_source_id)
}

/// 
/// @returns {type}
function gamemaker_timesource_get_arguments(parameters = {}) {
    if (!is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source = arguments[$ "time_source"]
    return is_struct(_time_source) ? _time_source.private.arguments : undefined
}

/// 
/// @returns {type}
function gamemaker_timesource_get_callback(parameters = {}) {
    if (!is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source = arguments[$ "time_source"]
    return is_struct(_time_source) ? _time_source.private.callback : undefined
}

/// 
/// @returns {type}
function gamemaker_timesource_get_children(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    var _children_ids = time_source_get_children(_time_source_id)
    var _children = []
    for (let i = 0; i < array_length; i++) {
        array_push(_children, new TimeSourceGeneric({ time_source_id : _children_ids[i] }))
    }
    return _children
}

/// 
/// @returns {type}
function gamemaker_timesource_get_completed_repetitions(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    return time_source_get_reps_completed(_time_source_id)
}

/// 
/// @returns {type}
function gamemaker_timesource_get_expiry_type(parameters = {}) {
    if (!is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source = arguments[$ "time_source"]
    return is_struct(_time_source) ? _time_source.private.expiry_type : undefined
}

/// This script function serves as a proxy for the static method function:
/// TimeSourceGeneric.get_id
function gamemaker_timesource_get_id(arguments = {}) {
    return time_source_id
    return is_struct(arguments.time_source) ? arguments.time_source.get_id() : arguments.time_source
}

/// 
/// @returns {type}
function gamemaker_timesource_get_parent(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    var _parent_id = time_source_get_parent(_time_source_id)
    return new TimeSourceGeneric({ time_source_id : _parent_id })
}

/// 
/// @returns {type}
function gamemaker_timesource_get_period(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    return time_source_get_period(_time_source_id)
}

/// 
/// @returns {type}
function gamemaker_timesource_get_remaining_repetitions(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    var _remaining_repetitions = time_source_get_reps_remaining(_time_source_id)
    return _remaining_repetitions == undefined ? Infinity : _remaining_repetitions
}

/// 
/// @returns {type}
function gamemaker_timesource_get_remaining_time(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    return time_source_get_time_remaining(_time_source_id)
}

/// 
/// @returns {type}
function gamemaker_timesource_get_repetitions(parameters = {}) {
    if (!is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source = arguments[$ "time_source"]
    var _remaining_repetitions = time_source_get_reps_remaining(_time_source_id)
    if (_remaining_repetitions == undefined) {
        return Infinity
    }
    var _completed_repetitions = time_source_get_reps_completed(_time_source_id)
    return _completed_repetitions + _remaining_repetitions
}

/// 
/// @returns {type}
function gamemaker_timesource_get_state(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    return time_source_get_state(_time_source_id)
}

/// 
/// @returns {type}
function gamemaker_timesource_get_units(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    return time_source_get_units(_time_source_id)
}

/// 
/// @returns {type}
function gamemaker_timesource_is_active(parameters = {}) {
    if (not is_struct(parameters)) {
        throw new InvalidArgumentException({ message : "`parameters` must be a struct." })
    }
    return time_source_get_state(time_source) == time_source_state_active
    return undefined
}

/// 
/// @returns {type}
function gamemaker_timesource_is_paused(parameters = {}) {
    if (not is_struct(parameters)) {
        throw new InvalidArgumentException({ message : "`parameters` must be a struct." })
    }
    return time_source_get_state(time_source) == time_source_state_paused
    return undefined
}

/// 
/// @returns {type}
function gamemaker_timesource_is_stopped(parameters = {}) {
    if (not is_struct(parameters)) {
        throw new InvalidArgumentException({ message : "`parameters` must be a struct." })
    }
    return time_source_get_state(time_source) == time_source_state_stopped
    return undefined
}

/// 
/// @returns {type}
function gamemaker_timesource_pause(parameters = {}) {
    if (not is_struct(parameters)) {
        throw new InvalidArgumentException({ message : "`parameters` must be a struct." })
    }
    var _time_sources = parameters[$ "time_source"]
    if (not is_array(_time_sources)) {
        _time_sources = [_time_sources]
    }
    for (let i = 0; i < array_length(_time_sources); i++) {
        if (gamemaker_timesource_is_active(_time_sources[i]) == true) {
            time_source_pause(_time_sources[i])
        }
    }
    return undefined
}

/// 
/// @returns {type}
function gamemaker_timesource_reconfigure(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    var _arguments = private_static.reconfigure_arguments(arguments)
    time_source_reconfigure(
        _arguments.time_source_id,
        _arguments.period,
        _arguments.units,
        _arguments.callback,
        _arguments.arguments,
        _arguments.repetitions,
        _arguments.expiry_type,
    )
}

/// 
/// @returns {type}
function gamemaker_timesource_reset(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    time_source_reset(_time_source_id)
    return self
}

/// 
/// @returns {type}
function gamemaker_timesource_resume(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    time_source_resume(_time_source_id)
    return self
}

/// 
/// @returns {type}
function gamemaker_timesource_start(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    time_source_start(_time_source_id)
    return self
}

/// 
/// @returns {type}
function gamemaker_timesource_stop(parameters = {}) {
    if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
    var _time_source_id = get_id(arguments)
    time_source_stop(_time_source_id)
    return self
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

class TimeSourceGeneric {

    #region    ―――――――――――――――――――― STATIC PUBLIC METHODS ――――――――――――――――――――
    
    static get_id = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static create(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static exists = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static destroy = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static start = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static pause = function(parameters = {}) {
        parameters.timesource = self
        gamemaker_timesource_pause(parameters)
        return self
    }

    /// This function executes 'gamemaker_timesource_stop' on the timesource
    /// represented by this struct.
    /// NOTE: Check 'gamemaker_timesource_is_stopped' for parameters.
    /// @returns {Struct} self - Fluent interface
    static stop = function(parameters = {}) {
        parameters.timesource = self
        gamemaker_timesource_stop(parameters)
        return self
    }

    /// This function executes 'gamemaker_timesource_is_stopped' on the timesource
    /// represented by this struct.
    /// NOTE: Check 'gamemaker_timesource_is_stopped' for parameters and return value.
    /// NOTE: Check 'gamemaker_timesource_is_stopped' for parameters.
    /// NOTE: Check 'gamemaker_timesource_is_stopped' for return value.
    static is_stopped = function(parameters = {}) {
        parameters.timesource = self
        return gamemaker_timesource_is_stopped(parameters)
    }

    static resume = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static reconfigure = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static reset = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_children = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_parent = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_period = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_state = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_remaining_time = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_units = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_completed_repetitions = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_remaining_repetitions = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_repetitions = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_expiry_type = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_callback = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    static get_arguments = function(parameters = {}) {
        parameters.timesource = self
        return self
    }

    #endregion ―――――――――――――――――――― STATIC PUBLIC METHODS ――――――――――――――――――――

    #region    ―――――――――――――――――――― STATIC PRIVATE ――――――――――――――――――――
    
    static private = {
        creation_arguments : function(arguments) {
            var _parent      = arguments[$ "parent"]      ?? TIME_SOURCE_CONTROLLER_GENERIC.get_default_parent()
            var _period      = arguments[$ "period"]      ?? TIME_SOURCE_CONTROLLER_GENERIC.get_default_period()
            var _units       = arguments[$ "units"]       ?? TIME_SOURCE_CONTROLLER_GENERIC.get_default_units()
            var _callback    = arguments[$ "callback"]
            var _arguments   = arguments[$ "arguments"]   ?? []
            var _repetitions = arguments[$ "repetitions"] ?? TIME_SOURCE_CONTROLLER_GENERIC.get_default_repetitions()
            var _expiry_type = arguments[$ "expiry_type"] ?? TIME_SOURCE_CONTROLLER_GENERIC.get_default_expiry_type()
    
            // shortform
            var _period_seconds = arguments[$ "period_seconds"]
            // shortform
            var _period_frames  = arguments[$ "period_frames"]
            // ensures correct scoping of callback function
            var _creation_scope = arguments[$ "creation_scope"] ?? other
    
            // PARENT
            if (is_struct(_parent)) { _parent = _parent.get_id() }
            // PERIOD and UNITS
            if (_period_seconds != undefined) {
                var _period = _period_seconds
                var _units  = time_source_units_seconds
            } else if (_period_frames != undefined) {
                var _period = _period_frames
                var _units  = time_source_units_frames
            }
            // REPETITIONS
            if (_repetitions == Infinity) { _repetitions = -1 }
            // CALLBACK
            if (!is_method(_callback) or method_get_self(_callback) == arguments) {
                _callback = method(_creation_scope, _callback)
            }
    
            return {
                parent      : _parent,
                period      : _period,
                units       : _units,
                callback    : _callback,
                arguments   : _arguments,
                repetitions : _repetitions,
                expiry_type : _expiry_type,
            }
        },
        reconfigure_arguments : function(arguments) {
            arguments[$ "time_source_id"] ??= get_id(arguments)
            arguments[$ "parent"]         ??= get_parent(arguments)
            arguments[$ "period"]         ??= get_period(arguments)
            arguments[$ "units"]          ??= get_units(arguments)
            arguments[$ "callback"]          ??= get_callback(arguments)
            arguments[$ "arguments"]      ??= get_arguments(arguments)
            arguments[$ "repetitions"]    ??= get_repetitions(arguments)
            arguments[$ "expiry_type"]    ??= get_expiry_type(arguments)
    
            return creation_arguments(arguments)
        },
    }

    #endregion ―――――――――――――――――――― STATIC PRIVATE ――――――――――――――――――――

    #region    ―――――――――――――――――――― PUBLIC ――――――――――――――――――――
    
    self.get_id                    = method(self, get_id)
    self.create                    = method(self, create)
    self.exists                    = method(self, exists)
    self.destroy                   = method(self, destroy)
    self.start                     = method(self, start)
    self.pause                     = method(self, pause)
    self.stop                      = method(self, stop)
    self.is_stopped                = method(self, is_stopped)
    self.resume                    = method(self, resume)
    self.reconfigure               = method(self, reconfigure)
    self.reset                     = method(self, reset)
    self.get_children              = method(self, get_children)
    self.get_parent                = method(self, get_parent)
    self.get_period                = method(self, get_period)
    self.get_state                 = method(self, get_state)
    self.get_remaining_time        = method(self, get_remaining_time)
    self.get_units                 = method(self, get_units)
    self.get_completed_repetitions = method(self, get_completed_repetitions)
    self.get_remaining_repetitions = method(self, get_remaining_repetitions)
    self.get_repetitions           = method(self, get_repetitions)
    self.get_expiry_type           = method(self, get_expiry_type)
    self.get_callback              = method(self, get_callback)
    self.get_arguments             = method(self, get_arguments)

    #endregion ―――――――――――――――――――― PUBLIC ――――――――――――――――――――

    #region    ―――――――――――――――――――― PRIVATE ――――――――――――――――――――
    
    private = {
        time_source_id : arguments[$ "time_source_id"],
        parent         : undefined,
        period         : undefined,
        units          : undefined,
        callback       : undefined,
        arguments      : undefined,
        repetitions    : undefined,
        expiry_type    : undefined,
    }

    #endregion ―――――――――――――――――――― PRIVATE ――――――――――――――――――――

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
