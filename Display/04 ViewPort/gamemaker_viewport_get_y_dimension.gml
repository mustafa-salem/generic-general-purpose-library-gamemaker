/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_y_dimension(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @returns {Real}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_y_dimension(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return view_get_hport(_view_port_index)
}
