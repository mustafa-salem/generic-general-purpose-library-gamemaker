/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_is_visible(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// wrapper function for view_get_visible
/// ----------------------------------------------------------------------------
/// @param {Struct} arguments
///
/// @param {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @returns {boolean}
///  Whether the view port with the provided index is visible.
/// ----------------------------------------------------------------------------
function gamemaker_viewport_is_visible(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return view_get_visible(_view_port_index)
}