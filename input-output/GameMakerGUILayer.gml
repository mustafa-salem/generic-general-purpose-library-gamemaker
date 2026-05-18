/// Gets the width of the gui in pixels.
/// @returns {Real}
function gamemaker_guilayer_get_x_dimension() {
    var _x_dimension = display_get_gui_width();
    return _x_dimension;
}

/// Gets the height of the gui in pixels.
/// @returns {Real}
function gamemaker_guilayer_get_y_dimension() {
    var _y_dimension = display_get_gui_height();
    return _y_dimension;
}

/// Sets the dimensions of the gui.
/// `parameters.x` The width of the GUI
/// `parameters.y` The height of the GUI
/// @param {Struct} parameters
/// @returns {Undefined}
function gamemaker_guilayer_set_dimensions(parameters) {
    var _x_dimension = parameters.x;
    var _y_dimension = parameters.y;
    display_set_gui_size(_x_dimension, _y_dimension);
    return undefined;
}

///
/// `parameters.xscale` The horizontal scaling factor (use -1 to reset to default).
/// `parameters.yscale` The vertical scaling factor (use -1 to reset to default).
/// `parameters.xoffset` The x offset position for drawing.
/// `parameters.yoffset` The y offset position for drawing.
/// @param {Struct} parameters
/// @returns {Undefined}
function gamemaker_guilayer_set_maximise(parameters) {
    var _xscale  = parameters.xscale;
    var _yscale  = parameters.yscale;
    var _xoffset = parameters.xoffset;
    var _yoffset = parameters.yoffset;
    display_set_gui_maximise(_xscale, _yscale, _xoffset, _yoffset);
    return undefined;
}