	/// ----------------------------------------------------------------------------
	/// @function set_execution_context(parameters)
	/// ----------------------------------------------------------------------------
	/// @param {type} execution_context
	/// The object instance handle or struct used as self context for event execution.
	/// ----------------------------------------------------------------------------
	/// @returns {struct.FiniteStateMachine} self
	/// ----------------------------------------------------------------------------
	set_execution_context = function(parameters = {}) {
		private.execution_context = parameters.execution_context
		return self
	}