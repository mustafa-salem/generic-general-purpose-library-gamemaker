	/// ----------------------------------------------------------------------------
	/// @function set_history(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// This function is used to set properties regarding history keeping.
	/// ----------------------------------------------------------------------------
	/// @param {boolean} enabled
	/// Whether history keeping is enabled. If disabled only the two most recent
	/// entries are kept.
	///
	/// @param {integer} capacity
	/// The maxmimum amount of history entries to keep. At least 2.
	/// ----------------------------------------------------------------------------
	/// @returns {struct.FiniteStateMachine} self
	/// ----------------------------------------------------------------------------
	set_history = function(parameters = {}) {
		var _history_enabled  = parameters[$ "enabled"]
		var _history_capacity = parameters[$ "capacity"]
		// set history_enabled
		if (is_bool(_history_enabled)) {
			private.history_enabled = _history_enabled
		}
		// set history_capacity
		if (is_numeric(_history_capacity)) {
			private.history_capacity = max(2, _history_capacity)
		}
		// resize history
		if (private.history_enabled and array_length(private.history_contents) > private.history_capacity) {
			array_resize(private.history_contents, private.history_capacity)
		} else if (!private.history_enabled and array_length(private.history_contents) > 2) {
			array_resize(private.history_contents, 2)
		}
		// return
	    return self
	}