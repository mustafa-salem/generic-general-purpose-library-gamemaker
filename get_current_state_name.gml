	/// ----------------------------------------------------------------------------
	/// @function get_current_state_name()
	/// ----------------------------------------------------------------------------
	/// @returns {string}
	/// The name of the current state.
	/// ----------------------------------------------------------------------------
	get_current_state_name = function() {
		var _state_name = array_length(private.history_contents) > 0 ? private.history_contents[0] : undefined
		return _state_name
	}