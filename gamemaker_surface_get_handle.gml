/// ----------------------------------------------------------------------------
/// @function function_name(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {mixed} surface
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {handle.surface|undefined}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_surface_get_handle(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_surface_get_id(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {mixed} surface
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {id.surface|undefined}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_surface_get_id(parameters = {}) {
    // exception: variable 'parameters' isn't a struct
    if (!is_struct(parameters)) {
        throw Exception({
            message : "The 'parameters' struct must be a struct.",
        })
    }

    if (!struct_exists(parameters, "surface")) {
        throw Exception({
            message : "The parameter 'surface' is required.",
        })
    }

    var _surface = parameters.surface

    if (!is_surface(_surface)) {
        throw Exception({
            message : "The parameter 'surface' must be of type 'struct', 'handle' or 'id'.",
        })
    }

    var _surface_id = undefined

    if (is_surface_struct(_surface)) {
        _surface_id = _surface.private.id
    } else if (is_surface_handle(_surface)) {
        _surface_id = int64(_surface)
    } else if (is_surface_id(_surface)) {
        _surface_id = int64(_surface)
    }

    if (!is_surface_id(is_surface_id)) {
        throw Exception({
            message : "surface_id must be a surface_id.",
        })
    }

    return _surface_id

}