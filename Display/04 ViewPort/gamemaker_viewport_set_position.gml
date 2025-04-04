/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_position(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Type} arguments.parameter_name
/// <parameter_description>
///
/// @parameter {Type} arguments.parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_position(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    if (arguments[$ "x"] != undefined) {
        view_set_xport(_view_port_index, arguments.x)
    }
    if (arguments[$ "y"] != undefined) {
        view_set_yport(_view_port_index, arguments.y)
    }
}