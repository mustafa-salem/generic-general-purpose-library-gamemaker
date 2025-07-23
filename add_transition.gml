	/// ----------------------------------------------------------------------------
	/// @function add_transition(arguments)
	/// ----------------------------------------------------------------------------
	/// @description
	/// Leaving source_state undefined is equivalent to providing all state names.
	/// Leaving destination_state undefined will cause the transition to reenter
	/// the current state.
	/// ----------------------------------------------------------------------------
	/// @param {Struct} arguments { transition_name : String, source_state_name : [String], destination_state_name : [String], predicate_method : [Function], leave_event : [Function], enter_event : [Function] }
	/// ----------------------------------------------------------------------------
	/// @returns {struct.FiniteStateMachine} self
	/// ----------------------------------------------------------------------------
	add_transition = function(arguments = {}) {

		/* ―――――――――――――――――――― ARGUMENT_VALIDATION ―――――――――――――――――――― */

		// the name string of the transition
		var _transition_name = arguments[$ "transition_name"]
		if (!__is_valid_transition_name(_transition_name)) { return undefined }

		// the name string of the source state
		// if it is undefined the transition is a wildcard transition
		var _source_state_name = arguments[$ "source_state_name"]
		_source_state_name ??= undefined

		// the name string of the destination state
		// if it is undefined the transition is a reflexive transition
		var _destination_state_name = arguments[$ "destination_state_name"]
		if (!is_string(_destination_state_name) or (_destination_state_name == "")) {
			__debug_message("State name should be a non-empty string.")
			return undefined
		}

		// the condition for the transition execute
		var _predicate_method = arguments[$ "predicate_method"]
		if (!is_callable(_predicate_method)) {
			__debug_message("Invalid value for 'condition' in add_transition(). Should be a function.")
			return self
		}

		// the custom leave state event
		var _leave_event = arguments[$ "leave_event"]
		if (!is_callable(_leave_event)) {
			__debug_message("Invalid value for 'leave_func' in add_transition(). Should be a function.")
			return self
		}

		// the custom enter state event
		var _enter_event = arguments[$ "enter_event"]
		if (!is_callable(_enter_event)) {
			__debug_message("Invalid value for 'enter_func' in add_transition(). Should be a function.")
			return self
		}

		/* ―――――――――――――――――――― LOGIC ―――――――――――――――――――― */

		if (!is_array(_source)) { _source = [_source] }

		for (var i = 0; i < array_length(_source); i++) {
			_source_state_name = _source[i]
			if (!is_string(_source_state_name) or (_source_state_name == "")) {
				__debug_message("State name should be a non-empty string. Transition not added.")
			} else {
				// Define the transition
				var _transition = {
					source_state_name		: _source_state_name,
					destination_state_name  : _destination_state_name,
					predicate_method	    : _predicate_method,
					exists		            : "defined_trigger",
					leave_event             : _leave_event,
					enter_event             : _enter_event,
				}

				private.transitions[$ _transition_name] = _transition
			}
		}

		return self
	}
