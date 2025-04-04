/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_x_dimension(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// wrapper for view_get_wport
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @returns {Real}
/// The x dimensions of the view port with the provided index on its render target.
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_x_dimension(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return view_get_wport(_view_port_index)
}
