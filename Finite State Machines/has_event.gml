	/// ----------------------------------------------------------------------------
	/// @function has_event(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @parameter {type} parameter_name
	/// <parameter_description>
	///
	/// ----------------------------------------------------------------------------
	/// @returns {boolean}
	/// ----------------------------------------------------------------------------
	has_event = function(parameters = {}) {
		var _event_name = parameters[$ "event_name"]
		if (!is_string(_event_name) or _event_name == "") {
			__debug_message("Event should be a non-empty string.")
			return false
		}
		var _current_event = private.states[$ get_current_state_name()][_event_name]
		return _current_event != undefined
	}