/// ----------------------------------------------------------------------------
/// @function gamemaker_surface_exists(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This is a generification of <surface_exists>.
///
/// This function checks if a surface exists.
/// ----------------------------------------------------------------------------
/// @param {mixed} surface
/// The value that identifies the surface to target. (id|handle|struct)
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_surface_exists(parameters) {
    var _surface = parameters[$ "surface"]
    if (is_struct(_surface)) { return _surface.exists() }
    if (is_numeric(_surface)) { return surface_exists(_surface) }
}