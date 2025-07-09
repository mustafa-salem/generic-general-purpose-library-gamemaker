/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_timesource_get_repetitions(parameters = {}) {
	if (!is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
	var _time_source = arguments[$ "time_source"]
	var _remaining_repetitions = time_source_get_reps_remaining(_time_source_id)
	if (_remaining_repetitions == undefined) { return infinity }
	var _completed_repetitions = time_source_get_reps_completed(_time_source_id)
	return _completed_repetitions + _remaining_repetitions
}