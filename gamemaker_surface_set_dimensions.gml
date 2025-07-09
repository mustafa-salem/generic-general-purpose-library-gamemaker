/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @param {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @param {type} parameters.surface
/// <description>
/// @param {number} [parameters.x]
/// <description>
/// @param {number} [parameters.y]
/// <description>
/// NOTE: `surface_resize`
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_surface_set_dimensions(parameters = {}) {
    surface_resize(parameters.surface, parameters.x, parameters.y)
    return undefined
}