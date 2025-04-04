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
function gamemaker_timesource_is_stopped(parameters = {}) {
	if (not is_struct(parameters)) {
		throw new InvalidArgumentException({ message : "<parameters> must be a struct." })
	}
	return time_source_get_state(time_source) == time_source_state_stopped
    return undefined
}