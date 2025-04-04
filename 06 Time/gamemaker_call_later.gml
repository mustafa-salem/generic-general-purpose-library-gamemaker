/// ----------------------------------------------------------------------------
/// @description
/// This function is used to create a Time Source
/// ----------------------------------------------------------------------------
/// @parameter {callable} callable
/// <parameter_description>
/// @parameter {type} delay_seconds
/// <parameter_description>
/// @parameter {type} delay_frames
/// <parameter_description>
/// @parameter {type} arguments
/// <parameter_description>
/// @parameter {type} parameter_name
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