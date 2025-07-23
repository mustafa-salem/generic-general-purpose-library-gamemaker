// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
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
#endregion ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function TimeSourceGeneric() constructor {

	#region    ―――――――――――――――――――― STATIC PUBLIC METHODS ――――――――――――――――――――
	
	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_id = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static create(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static exists = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static destroy = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {struct} self
	/// ----------------------------------------------------------------------------
	static start = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {struct} self
	/// ----------------------------------------------------------------------------
	static pause = function(parameters = {}) {
		parameters.timesource = self
		gamemaker_timesource_pause(parameters)
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// This function executes 'gamemaker_timesource_stop' on the timesource
	/// represented by this struct.
	/// ----------------------------------------------------------------------------
	/// NOTE: Check 'gamemaker_timesource_is_stopped' for parameters.
	/// ----------------------------------------------------------------------------
	/// @returns {struct} self - Fluent interface
	/// ----------------------------------------------------------------------------
	static stop = function(parameters = {}) {
		parameters.timesource = self
		gamemaker_timesource_stop(parameters)
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// This function executes 'gamemaker_timesource_is_stopped' on the timesource
	/// represented by this struct.
	/// NOTE: Check 'gamemaker_timesource_is_stopped' for parameters and return value.
	/// ----------------------------------------------------------------------------
	/// NOTE: Check 'gamemaker_timesource_is_stopped' for parameters.
	/// ----------------------------------------------------------------------------
	/// NOTE: Check 'gamemaker_timesource_is_stopped' for return value.
	/// ----------------------------------------------------------------------------
	static is_stopped = function(parameters = {}) {
		parameters.timesource = self
		return gamemaker_timesource_is_stopped(parameters)
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static resume = function(parameters = {}) {
		parameters.timesource = self
		return self
	}


	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static reconfigure = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static reset = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_children = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_parent = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_period = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_state = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_remaining_time = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_units = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_completed_repetitions = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_remaining_repetitions = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_repetitions = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_expiry_type = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
	static get_callback = function(parameters = {}) {
		parameters.timesource = self
		return self
	}

	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// <return_description>
	/// ----------------------------------------------------------------------------
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
			if (_repetitions == infinity) { _repetitions = -1 }
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
			arguments[$ "callback"]	      ??= get_callback(arguments)
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
