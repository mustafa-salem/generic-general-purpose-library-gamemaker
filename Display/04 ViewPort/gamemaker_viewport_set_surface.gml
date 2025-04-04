/// ----------------------------------------------------------------------------
/// @description
/// `view_surface_id` `view_set_surface_id`
/// ----------------------------------------------------------------------------
/// @parameter {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @parameter {Struct.ViewPortGeneric|Real} parameters.viewport
/// The view port to target or its index (0 - 7).
/// @parameter {Type} parameters.surface_id
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_surface(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    view_set_surface_id(_view_port_index, parameters.surface_id)
    return undefined
}