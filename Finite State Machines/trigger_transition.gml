	/// ----------------------------------------------------------------------------
	/// @function trigger_transition(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @parameter {mixed} transition
	/// <parameter_description>
	///
	/// @parameter {array<any>} arguments
	/// <parameter_description>
	///
	/// ----------------------------------------------------------------------------
	/// @returns {type}
	/// Whether the transition has been successfully triggered.
	/// ----------------------------------------------------------------------------
	trigger_transition = function(parameters = {}) {
		var _transitions = arguments[$ "transition"]
		var _arguments   = arguments[$ "arguments"]
		//
		for (var i = 0; array_length(_transitions); i++) {
			if (!__is_valid_transition_name({ transition_name : _transition_name })) { continue }
			var _currState, _source
			_currState = get_current_state_name()
			_source    = _currState
			// My triggers
			if (has_transition({ transition_name : _transition_name, source_state_name : _source }) == "defined_trigger") {
				if (__try_triggering_transition({
					transitions : private.transitions[$ _source][$ _transition_name],
					source_state_name : _currState,
					trigger_name : _transition_name,
					arguments : _arguments
				})) { return true }
			}
			// Wild triggers
			if (has_transition({ transition_name : _transition_name, source_state_name : WILDCARD_TRANSITION_NAME_FINITE_STATE_MACHINE_GENERIC }) == "defined_trigger") {
				if (__try_triggering_transition({
					transitions : private.wildcard_transitions[$ _transition_name],
					source_state_name : _currState,
					trigger_name : _transition_name,
					arguments : _arguments
				})) { return true }
			}
			// Parent triggers
			while (struct_exists(private.state_parent_name, _source)) {
				_source = private.state_parent_name[$ _source]
				if (has_transition({ transition_name : _transition_name, source_state_name : _source }) == "defined_trigger") {
					if (__try_triggering_transition({
						transitions : private.transitions[$ _source][$ _transition_name],
						source_state_name : _currState,
						trigger_name : _transition_name,
						arguments : _arguments
					})) { return true }
				}
			}
		}
		// return
		return false
	}