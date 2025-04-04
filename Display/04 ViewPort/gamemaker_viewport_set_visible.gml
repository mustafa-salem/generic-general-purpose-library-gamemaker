/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_visible(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Type} arguments.visible
/// Whether the view port should be visible.
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_visible(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    view_set_visible(_view_port_index, arguments.visible)
}
