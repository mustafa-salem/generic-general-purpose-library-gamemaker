/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_timesource_get_completed_repetitions(parameters = {}) {
	if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
	var _time_source_id = get_id(arguments)
	return time_source_get_reps_completed(_time_source_id)
}