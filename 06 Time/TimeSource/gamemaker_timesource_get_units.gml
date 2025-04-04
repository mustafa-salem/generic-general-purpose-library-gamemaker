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
function gamemaker_timesource_get_units(parameters = {}) {
	if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
	var _time_source_id = get_id(arguments)
	return time_source_get_units(_time_source_id)
}