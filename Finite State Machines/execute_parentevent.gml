	/// ----------------------------------------------------------------------------
	/// @function execute_parentevent(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// This function is used to execute the current event of the parent state.
	/// ----------------------------------------------------------------------------
	/// @parameter {Struct} parameter_name
	///
	/// ----------------------------------------------------------------------------
	/// @returns {struct.FiniteStateMachine} self
	/// ----------------------------------------------------------------------------
	execute_parentevent = function(parameters = {}) {
		var _state_name = private.history_contents[0]

		if (private.state_parent_name[$ _state_name] == undefined) {
			__debug_message("State '{_state_name}' has no parent state.")
			return self
		}

		if (CIRCULAR_INHERITANCE_THROW_ERROR_FINITE_STATE_MACHINE_GENERIC) {
			private.child_queue	= []
			var _length = array_length(private.child_queue)
			var _str = ""

			var _index = 0
			for (var i = 0; i < _length; i++) {
				if (private.child_queue[i] == _state_name) {
					_index = i
					break
				}
			}

			if (_index < _length) {
				_str += string(_state_name)
				for (var i = 1; i < _length - _index; i++) {
					_str += " -> " + string(private.child_queue[_index])
				}
				_str += " -> " + string(_state_name)
				__debug_message($"Circular inheritance found. Inheritance chain: (-> reads as \"inherits from\")\n{_str}")
				return undefined
			}
		}

		__execute_event({ event_name : private.current_event_name })

		return self
	}