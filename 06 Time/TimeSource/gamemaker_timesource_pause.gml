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
function gamemaker_timesource_pause(parameters = {}) {
	if (not is_struct(parameters)) {
		throw new InvalidArgumentException({ message : "<parameters> must be a struct." })
	}
	var _time_sources = parameters[$ "time_source"]
	if (not is_array(_time_sources)) {
		_time_sources = [_time_sources]
	}
	for (var i = 0; i < array_length(_time_sources); i++) {
		if (gamemaker_timesource_is_active(_time_sources[i]) == true) {
			time_source_pause(_time_sources[i])
		}
	}
	return undefined
}