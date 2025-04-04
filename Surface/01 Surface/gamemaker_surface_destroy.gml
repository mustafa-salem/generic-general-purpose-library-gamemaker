/// ----------------------------------------------------------------------------
/// @description
/// * surface_free
/// ----------------------------------------------------------------------------
/// @parameter {mixed} surface
/// The value or the array of values that identify the surface to destroy.
/// ----------------------------------------------------------------------------
function gamemaker_surface_destroy(parameters) {
    var _surface = parameters[$ "surface"]
    if (!is_array(_surface)) { _surface = [_surface] }
    for (var i = 0; i < array_length(_surface); i++) {
        if (is_struct(_surface[i])) {
            _surface[i].destroy(parameters)
        } else if (surface_exists(_surface)) {
            surface_free(arguments.surface.surface_id)
        }
    }
}