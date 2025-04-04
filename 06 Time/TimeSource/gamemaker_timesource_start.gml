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
function gamemaker_timesource_start(parameters = {}) {
	if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
	var _time_source_id = get_id(arguments)
	time_source_start(_time_source_id)
	return self
}