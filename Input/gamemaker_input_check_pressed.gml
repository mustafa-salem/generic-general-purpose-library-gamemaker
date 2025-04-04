/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Type} input
/// <parameter_description>
///
/// @parameter {Type} player
/// <parameter_description>
///
/// @parameter {Type} buffer_duration
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_input_check_pressed(parameters) {
    return input_check_pressed(parameters.input, parameters.player, parameters.buffer_duration)
}