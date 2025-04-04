/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} instance
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_particlesysteminstance_destroy(parameters = {}) {
    var _handle = gamemaker_particlesysteminstance_get_handle(parameters)
    if ((_handle != undefined) and part_system_exists(_handle)) {
        part_system_destroy(_handle)
    }
    return undefined
}