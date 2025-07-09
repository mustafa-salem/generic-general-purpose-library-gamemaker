/// ----------------------------------------------------------------------------
/// @function gamemaker_surface_clear(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to set the colour and alpha components of all pixels
/// of the current target surface. No blending operations are performed, instead
/// the colour values are simply overwritten.
/// `draw_clear`, `draw_clear_alpha`
/// ----------------------------------------------------------------------------
/// @param {number} [colour]
/// The colour with which to clear the surface. [0, #FFFFFF]
///
/// @param {number} [alpha]
/// The transparency of the colour with which to clear the surface. [0, 1]
///
/// ----------------------------------------------------------------------------
function gamemaker_surface_clear(parameters = {}) {
    var _colour = parameters[$ "colour"] ?? #000000
    var _alpha  = parameters[$ "alpha"]  ?? 1
    draw_clear_alpha(_colour, _alpha)
}
