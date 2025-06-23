/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a proxy for the static method function:
/// TimeSourceGeneric.exists
/// ----------------------------------------------------------------------------
/// @param {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_timesource_exists(parameters = {}) {
	if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
	var _time_source_id = get_id(arguments)
	return time_source_exists(_time_source_id)
}