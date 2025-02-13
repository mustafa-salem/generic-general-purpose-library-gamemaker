/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the width of the gui in pixels.
/// ----------------------------------------------------------------------------
/// @return {number}
/// ----------------------------------------------------------------------------
function gamemaker_gui_get_x_dimension() {
    return display_get_gui_width()
}

/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the height of the gui in pixels.
/// ----------------------------------------------------------------------------
/// @return {number}
/// ----------------------------------------------------------------------------
function gamemaker_gui_get_y_dimension() {
    return display_get_gui_height()
}

/// ----------------------------------------------------------------------------
/// @description
/// This function is used to set the dimensions of the gui.
/// ----------------------------------------------------------------------------
/// @parameter {number} x
/// <parameter_description>
/// @parameter {number} y
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_gui_set_dimensions(parameters = {}) {
    display_set_gui_size(parameters.x, parameters.y)
    return undefined
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// @parameter {type} parameter_name
/// <parameter_description>
/// @parameter {type} parameter_name
/// <parameter_description>
/// @parameter {type} parameter_name
/// <parameter_description>
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_gui_set_maximise(parameters = {}) {
    display_set_gui_maximise(xscale, yscale, xoffset, yoffset)
    return undefined
}