	/// ----------------------------------------------------------------------------
	/// @function get_history_contents()
	/// ----------------------------------------------------------------------------
	/// @returns {array}
	/// A clone of the array holding the history entries.
	/// ----------------------------------------------------------------------------
	get_history_contents = function() {
		return variable_clone(private.history_contents)
	}