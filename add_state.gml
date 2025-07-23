	/// ----------------------------------------------------------------------------
	/// @function add_state(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// This function is used to set the properties of a state.
	/// ----------------------------------------------------------------------------
	/// @param {string} name
	/// The name of the state to define.
	///
	/// @param {string} parent
	/// The name of the parent state of the state to define.
	/// ----------------------------------------------------------------------------
	/// @returns {struct.FiniteStateMachine} self
	/// ----------------------------------------------------------------------------
	add_state = function(parameters = {}) {

		/* ―――――――――――――――――――― ARGUMENT_VALIDATION ―――――――――――――――――――― */

		// the name string of the state
		var _state_name  = parameters[$ "state"]
		if (!is_struct(parameters)) {
			__debug_message("argument0 should be a struct.")
			return self
		}
		if (!__is_valid_state_name(_state_name)) {
			__debug_message("argument0.name should be a valid state name.")
			return self
		}
		if (_state_name == FINITE_STATE_MACHINE_DEFAULT_STATE) {
			__debug_message("argument0.name cannot be the name of the default state.")
			return self
		}

		// the name string of the parent state of the state
		var _parent_name = parameters[$ "parent"] ?? FINITE_STATE_MACHINE_DEFAULT_STATE
		if (!__is_valid_state_name(_parent_name)) {
			__debug_message("argument0.parent should be a valid state name.")
			return self
		}
		if (!exists_state({ state : _parent_name })) {
			__debug_message($"The parent state '{_parent_name}' is not defined.")
			return self
		}
		if (_parent_name == _state_name) {
			__debug_message("Cannot set a state as a parent to itself.")
			return self
		}

		/* ―――――――――――――――――――― LOGIC ―――――――――――――――――――― */

		// create new
		private.states[$ _state_name] ??= {
			name        : _state_name,
			parent_name : _parent_name,
		}

		// overwrite
		private.states[$ _state_name][$ "parent_name"] ??= _parent_name

		return self
	}
