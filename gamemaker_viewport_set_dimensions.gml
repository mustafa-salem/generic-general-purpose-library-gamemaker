/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_dimensions(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {Struct} arguments
///
/// @param {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @param {Real} arguments.x
/// <parameter_description>
///
/// @param {Real} arguments.y
/// <parameter_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_dimensions(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    if (arguments[$ "x"] != undefined) {
        view_set_wport(_view_port_index, arguments.x)
    }
    if (arguments[$ "y"] != undefined) {
        view_set_hport(_view_port_index, arguments.y)
    }
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} viewport
/// <parameter_description>
/// @param {type} x
/// <parameter_description>
/// @param {type} y
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_dimensions(parameters = {}) {
    if () {
        view_set_wport(view_port, w)
    }
    if () {
        view_set_hport(view_port, h)
    }
    return undefined
}
