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
function gamemaker_timesource_reconfigure(parameters = {}) {
	if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
	var _time_source_id = get_id(arguments)
	var _arguments = private_static.reconfigure_arguments(arguments)
	time_source_reconfigure(
		_arguments.time_source_id,
		_arguments.period,
		_arguments.units,
		_arguments.callback,
		_arguments.arguments,
		_arguments.repetitions,
		_arguments.expiry_type,
	)
}
