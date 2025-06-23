/// ----------------------------------------------------------------------------
/// @description
/// * surface_set_target
/// * surface_set_target_ext
///
/// surface_reset_target must be used when render_target 0 is changed.
/// ----------------------------------------------------------------------------
/// @param {type} surface
/// <parameter_description>
///
/// @param {type} render_target
/// render target index [0, 3]
///
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_rendertarget_set_surface(parameters) {
    var _surface       = parameters.surface
    var _render_target = parameters[$ "render_target"] ?? 0

    if (is_struct(_surface)) {
        _surface.set_render_target(parameters)
        return
    }

    if (!surface_exists(_surface)) { return undefined }

    surface_set_target_ext(_render_target, _surface)

    return
}