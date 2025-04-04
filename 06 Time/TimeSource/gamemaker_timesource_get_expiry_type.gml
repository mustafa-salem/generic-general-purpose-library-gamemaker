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
function gamemaker_timesource_get_expiry_type(parameters = {}) {
	if (!is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
	var _time_source = arguments[$ "time_source"]
	return is_struct(_time_source) ? _time_source.private.expiry_type : undefined
}
