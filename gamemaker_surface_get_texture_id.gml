/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {Mixed} surface
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_surface_get_texture_id(parameters = {}) {

    try {

    } catch(_exception) {
        return undefined
    }

    /// @type {int64}
    var _surface_id

    !is_numeric() { return undefined }

    // This function expects a numeric value referencing a surface and will return
    // -1 if the surface doesn't exist.
    surface_get_texture(_surface_id)

    var _texture_id

    if (_texture_id == -1) { _texture_id = undefined }

    return _texture_id
}