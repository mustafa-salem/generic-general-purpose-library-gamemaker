	/// ----------------------------------------------------------------------------
	/// @function has_transition(arguments)
	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @param {Type} arguments.transition_name
	/// <parameter_description>
	///
	/// @param {String} [arguments.source_state]
	/// <parameter_description>
	/// ----------------------------------------------------------------------------
	/// @returns {Real}
	/// FSM_TRIGGER_GENERIC
	/// ----------------------------------------------------------------------------
	has_transition = function(arguments = {}) {
		var _transition_name   = arguments[$ "transition_name"]
		var _source_state_name = arguments[$ "source_state_name"]
		if (!is_string(_transition_name)) return false
		if (!is_string(_source_state_name)) return false
		if (_source_state_name == FSM_WILDCARD_TRANSITION_NAME_GENERIC) return true

		if (!__is_valid_transition_name({ transition_name : _transition_name, show_error : false })) { return false }

		var _transition_name   = arguments[$ "transition_name"]
		var _source_state_name = arguments[$ "source_state_name"]
		if (_source_state_name == WILDCARD_TRANSITION_NAME_FINITE_STATE_MACHINE_GENERIC) {
			// Wildcard transition
			if (struct_exists(private.wildcard_transitions, _transition_name)) {
				return "defined_trigger"
			}
		} else {
			// Default
			if (struct_exists(private.transitions, _source_state_name) and struct_exists(private.transitions[$ _source_state_name], _transition_name)) {
				return "defined_trigger"
			}
			while (struct_exists(private.state_parent_name, _source_state_name)) {
				_source_state_name = private.state_parent_name[$ _source_state_name]
				if (struct_exists(private.transitions, _source_state_name) and struct_exists(private.transitions[$ _source_state_name], _transition_name)) {
					return "inherited_trigger"
				}
			}
		}

		return "undefined_trigger"
	}