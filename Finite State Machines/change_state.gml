	/// ----------------------------------------------------------------------------
	/// @function change_state(arguments)
	/// ----------------------------------------------------------------------------
	/// @description
	/// This method is used to change the finite state machine to another state.
	/// ----------------------------------------------------------------------------
	/// @parameter {String} state
	/// <parameter_description>
	///
	/// @parameter {Function} leave_state_event
	/// <parameter_description>
	///
	/// @parameter {Function} enter_state_event
	/// <parameter_description>
	///
	/// @parameter {Array<Any>} arguments
	/// <parameter_description>
	///
	/// ----------------------------------------------------------------------------
	/// @returns {struct.FiniteStateMachine} self
	/// ----------------------------------------------------------------------------
	change_state = function(arguments) {
		// the name of the state to change to
		var _state_name  = arguments[$ "state_name"]

		// the arguments to provide
		var _arguments   = arguments[$ "arguments"]

		// leave_event validity check
		var _leave_event = arguments[$ "leave_event"]
		if (_leave_event != undefined and !is_callable(_leave_event)) {
			__debug_message("Invalid value for 'leave_event' in change_state(). Should be a function.")
			return undefined
		}

		// enter_event validity check
		var _enter_event = arguments[$ "enter_event"]
		if ((_enter_event != undefined) and !is_callable(_enter_event)) {
			__debug_message("Invalid value for 'enter_event' in change_state(). Should be a function.")
			return undefined
		}

		var _source_state_name = get_current_state_name()
		// __change_state({ state_name : _state_name, leave_event : _leave_event, enter_event : _enter_event, arguments : _arguments })
		_state_name = arguments[$ "state_name"]
		var _leave = arguments[$ "leave_event"]
		var _enter = arguments[$ "enter_event"]
		var _data  = arguments[$ "arguments"]
		var _defLeave = leave
		var _defEnter = enter
		leave = _leave
		enter = _enter

		// Leave current state
		if (leave == undefined) { leave = _defLeave }
		else { private.temp_event = _defLeave }
		leave_state_event(_data)

		// Init state
		private.state_start_time = get_timer()
		__add_to_history({ state_name : _state_name })

		// Enter next state
		if (enter == undefined) { enter = _defEnter }
		else { private.temp_event = _defEnter }
		enter_state_event(_data)

		// Reset temp variable
		private.temp_event = undefined

		leave = _defLeave
		enter = _defEnter
		__trigger_event_listener("change_state_event", [_state_name, _source_state_name])

		return self
	}