/// ----------------------------------------------------------------------------
/// @description
/// This function is used to create a Time Source
/// ----------------------------------------------------------------------------
/// @param {callable} callable
/// <parameter_description>
/// @param {type} delay_seconds
/// <parameter_description>
/// @param {type} delay_frames
/// <parameter_description>
/// @param {type} arguments
/// <parameter_description>
/// @param {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// ----------------------------------------------------------------------------
function gamemaker_call_later(parameters = {}) {
	arguments.creation_scope = other
    var _time_source = new TimeSourceGeneric(arguments).start()
	TIME_SOURCE_CONTROLLER_GENERIC.add_garbage_collection({ time_source : _time_source })
    return _time_source
}