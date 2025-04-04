	/// ----------------------------------------------------------------------------
	/// @function add_state_runtime(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @parameter {type} runtime_frames
	/// <parameter_description>
	/// ----------------------------------------------------------------------------
	/// @returns {struct.FiniteStateMachine} self
	/// ----------------------------------------------------------------------------
	add_state_runtime = function(parameters = {}) {
		var _time
		if (!is_real(_time)) {
			__debug_message("Time should be a number")
			return self
		}
		private.state_start_time = get_timer() - _time * 1000000
		return self
	}