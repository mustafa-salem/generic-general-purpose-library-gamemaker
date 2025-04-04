/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @parameter {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @parameter {type} parameters.surface
/// <description>
/// @parameter {number} [parameters.x]
/// <description>
/// @parameter {number} [parameters.y]
/// <description>
/// NOTE: `surface_resize`
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_surface_set_dimensions(parameters = {}) {
    surface_resize(parameters.surface, parameters.x, parameters.y)
    return undefined
}