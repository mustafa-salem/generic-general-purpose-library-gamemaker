	/// ----------------------------------------------------------------------------
	/// @function get_execution_context()
	/// ----------------------------------------------------------------------------
	/// @returns {mixed}
	/// The object instance handle or struct used as self context for event execution.
	/// ----------------------------------------------------------------------------
	get_execution_context = function() {
	    return private.execution_context
	}