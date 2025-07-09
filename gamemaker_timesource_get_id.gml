/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a proxy for the static method function:
/// TimeSourceGeneric.get_id
/// ----------------------------------------------------------------------------
function gamemaker_timesource_get_id(arguments = {}) {
	return time_source_id
	return is_struct(arguments.time_source) ? arguments.time_source.get_id() : arguments.time_source
}
