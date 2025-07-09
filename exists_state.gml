	/// ----------------------------------------------------------------------------
	/// @function exists_state(parameters)
	/// ----------------------------------------------------------------------------
	/// @param {string} state
	/// The name of the state to check.
	/// ----------------------------------------------------------------------------
	/// @returns {boolean}
	/// Whether the finite state machine has a state with the given name.
	/// ----------------------------------------------------------------------------
	exists_state = function(parameters = {}) {
		var _state_name = parameters[$ "state"]
		if (!__is_valid_state_name()) { return false }
		return private.states[$ _state_name] != undefined
	}
