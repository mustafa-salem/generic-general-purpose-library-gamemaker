/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_x_position(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {Struct} arguments
///
/// @param {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @returns {Real}
/// The x position of the given view port
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_x_position(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return view_get_xport(_view_port_index)
}