/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_x_dimension(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {Struct} arguments
///
/// @param {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @param {Type} arguments.x_dimensions
/// The x dimensions of the view port on its render target.
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_x_dimension(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    view_set_wport(_view_port_index, arguments.x_dimensions)
}