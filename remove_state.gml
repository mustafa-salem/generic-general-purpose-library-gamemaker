	/// ----------------------------------------------------------------------------
	/// @function remove_state(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// This function is used to remove a state.
	/// ----------------------------------------------------------------------------
	/// @param {type} state
	/// <parameter_description>
	/// ----------------------------------------------------------------------------
	/// @returns {struct.FiniteStateMachine} self
	/// ----------------------------------------------------------------------------
	remove_state = function(parameters = {}) {
		var _state_names = parameters[$ "state"]
		if (!is_array(_state_names)) { _state_names = [_state_names] }
		for (var i = 0; i < array_length(_state_names); i++) {
			var _state_name = _state_names[i]
			if (!__is_valid_state_name(_state_name)) {
				continue
			}
			if (_state_name == FINITE_STATE_MACHINE_DEFAULT_STATE) {
				__debug_message("Cannot remove the default state.")
				continue
			}
			struct_remove(private.states, _state_name)
		}
		return self
	}