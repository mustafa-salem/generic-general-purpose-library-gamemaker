	/// ----------------------------------------------------------------------------
	/// @function is_state(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// This function is used to check if a given state equals another state or is
	/// inherits from it.
	/// ----------------------------------------------------------------------------
	/// @param {string} state
	/// The name of the state to check.
	///
	/// @param {string} [parent]
	/// The name of the parent state to check. Defaults to the current state.
	/// ----------------------------------------------------------------------------
	/// @returns {boolean}
	/// ----------------------------------------------------------------------------
	is_state = function(parameters = {}) {
		// the name of the state to check
		var _state_name  = parameters[$ "state"]
		if (!__is_valid_state_name(_state_name)) { return false }
		// the name of the state to check as parent
		var _parent_name = parameters[$ "parent"] ?? get_current_state_name()
		if (!__is_valid_state_name(_parent_name)) { return false }

		while (_state_name != undefined) {
			if (_state_name == _parent_name) { return true }
			_state_name = private.state[$ _state_name].parent_name
		}

		return false
	}