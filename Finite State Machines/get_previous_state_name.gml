	/// ----------------------------------------------------------------------------
	/// @function get_previous_state_name()
	/// ----------------------------------------------------------------------------
	/// @returns {String}
	/// The name of the previous state.
	/// ----------------------------------------------------------------------------
	get_previous_state_name = function() {
		return array_length(private.history_contents) > 1 ? private.history_contents[1].state_name : undefined
	}