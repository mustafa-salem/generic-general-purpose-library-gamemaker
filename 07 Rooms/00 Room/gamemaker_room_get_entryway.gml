/// ----------------------------------------------------------------------------
/// @function gamemaker_room_get_entryway(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
///
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_room_get_entryway(parameters = {}) {
    Room.private.entrance = parameters.entrance
}