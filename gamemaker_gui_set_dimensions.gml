/// ----------------------------------------------------------------------------
/// @description
/// This function is used to set the dimensions of the gui.
/// ----------------------------------------------------------------------------
/// @param {number} x
/// <parameter_description>
/// @param {number} y
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_gui_set_dimensions(parameters = {}) {
    display_set_gui_size(parameters.x, parameters.y)
    return undefined
}
