/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a proxy for the static method function:
/// ViewGeneric.set_position
/// ----------------------------------------------------------------------------
/// @parameter {type} camera
/// <parameter_description>
/// @parameter {number} x
/// <parameter_description>
/// @parameter {number} y
/// <parameter_description>
/// ----------------------------------------------------------------------------
function gamemaker_camera_set_viewposition(parameters = {}) {
    return VIEW_GENERIC.set_position(arguments)
}