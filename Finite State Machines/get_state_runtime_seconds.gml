	/// ----------------------------------------------------------------------------
	/// @function get_state_runtime_seconds(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// This function is used to get the time the current state has been running.
	/// ----------------------------------------------------------------------------
	/// @returns {number}
	/// ----------------------------------------------------------------------------
	get_state_runtime_seconds = function(parameters = {}) {
		return (get_timer() - private.state_start_time) / 1000000
	}