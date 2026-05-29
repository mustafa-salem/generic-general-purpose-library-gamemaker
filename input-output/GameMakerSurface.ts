// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

#macro GAMEMAKER_APPLICATION_SURFACE gamemaker_surface(application_surface)
#macro ENABLE_COMBATIBILITY_SIZE_SURFACE_GENERIC false
#macro ENSURE_EXISTS_SURFACE_GENERIC true
#macro DEFAULT_FORMAT_SURFACE_GENERIC RGBA_8BIT_UINT_NORMALIZED
#macro SURFACE_DEFAULT_BLEND_ALPHA 1
#macro SURFACE_DEFAULT_FORMAT surface_rgba8unorm
#macro SURFACE_DEFAULT_GARBAGE_COLLECTION true
#macro SURFACE_DEFAULT_EXISTANCE_ENSURANCE true

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// 
/// @param {Struct} parameters
/// @returns {Struct.GameMakerSurface|Undefined}
function gamemaker_surface(parameters) {
    
}

/// 
function gamemaker_rendertarget_get_surface(arguments = {}) {
    
}

/// `surface_reset_target`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {type}
function gamemaker_rendertarget_reset_surface(parameters = {}) {
    return undefined
}

/// * surface_set_target
/// * surface_set_target_ext
/// surface_reset_target must be used when render_target 0 is changed.
/// @param {type} surface
/// @param {type} render_target render target index [0, 3]
/// @returns {type}
function gamemaker_rendertarget_set_surface(parameters) {
    var _surface       = parameters.surface
    var _render_target = parameters["render_target"] ?? 0
    if (is_struct(_surface)) {
        _surface.set_render_target(parameters)
        return
    }
    if (!surface_exists(_surface)) {
        return undefined;
    }
    surface_set_target_ext(_render_target, _surface)
    return
}

/// `parameters.surface`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_surface_build(parameters = {}) {
    var _surface
    if (surface.exists() == false) {

    }
    return undefined
}

/// This function is used to set the colour and alpha components of all pixels
/// of the current target surface. No blending operations are performed, instead
/// the colour values are simply overwritten.
/// `draw_clear`, `draw_clear_alpha`
/// @param {Real} [colour] The colour with which to clear the surface. [0, Colour.White]
/// @param {Real} [alpha] The transparency of the colour with which to clear the surface. [0, 1]
function gamemaker_surface_clear(parameters = {}) {
    var _colour = parameters["colour"] ?? Colour.Black
    var _alpha  = parameters["alpha"]  ?? 1
    draw_clear_alpha(_colour, _alpha)
}

/// * surface_free
/// @param {mixed} surface The value or the array of values that identify the surface to destroy.
function gamemaker_surface_destroy(parameters) {
    var _surface = parameters["surface"]
    if (!Array.isArray(_surface)) { _surface = [_surface] }
    for (let i = 0; i < _surface.length; i++) {
        if (is_struct(_surface[i])) {
            _surface[i].destroy(parameters)
        } else if (surface_exists(_surface)) {
            surface_free(arguments.surface.surface_id)
        }
    }
}

/// This is a generification of <surface_exists>.
/// This function checks if a surface exists.
/// @param {mixed} surface The value that identifies the surface to target. (id|handle|struct)
/// @returns {Bool}
function gamemaker_surface_exists(parameters) {
    var _surface = parameters["surface"]
    if (is_struct(_surface)) { return _surface.exists() }
    if (is_numeric(_surface)) { return surface_exists(_surface) }
}

function gamemaker_surface_get_default_blend_alpha() {
    return GameMakerSurface.private.default_blend_alpha
}

/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// @returns {type}
function gamemaker_surface_get_format(parameters = {}) {
    return _return
}

/// 
/// @param {mixed} surface
/// @returns {handle.surface|undefined}
function gamemaker_surface_get_handle(parameters = {}) {
    return _return
}

/// 
/// @param {mixed} surface
/// @returns {id.surface|undefined}
function gamemaker_surface_get_id(parameters = {}) {
    // exception: variable 'parameters' isn't a struct
    if (!is_struct(parameters)) {
        throw Exception({ message : "The 'parameters' struct must be a struct.",  })
    }
    if (!struct_exists(parameters, "surface")) {
        throw Exception({  message : "The parameter 'surface' is required.",  })
    }
    var _surface = parameters.surface
    if (!is_surface(_surface)) {
        throw Exception({  message : "The parameter 'surface' must be of type 'struct', 'handle' or 'id'.",  })
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

/// 
/// @param {Mixed} surface
/// @returns {type}
function gamemaker_surface_get_texture_id(parameters = {}) {
    try {

    } catch(_exception) {
        return undefined
    }
    /// @type {int64}
    var _surface_id
    !is_numeric() {
        return undefined;
    }
    // This function expects a numeric value referencing a surface and will return
    // -1 if the surface doesn't exist.
    surface_get_texture(_surface_id)
    var _texture_id
    if (_texture_id == -1) { _texture_id = undefined }
    return _texture_id
}

/// 
/// @param {Mixed} surface
/// @returns {Struct.Texture|undefined}
function gamemaker_surface_get_texture_id(parameters = {}) {
    gamemaker_surface_get_texture_id()
}

/// Gets the x dimension of a surface.
/// NOTE: `surface_get_width`
/// ---
/// `parameters.surface` The surface.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_surface_get_x_dimension(parameters = {}) {
    var _x_dimension = surface_get_width(surface_id);
    return _x_dimension;
}

/// Returns the y dimension, in pixels, of a surface.
/// ---
/// `parameters.surface` The surface to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_surface_get_y_dimension(parameters = {}) {
    if (argument_count != 1) {
        throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
    }
    if (typeof(parameters) != "struct") {
        throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
    }
    gamemaker_guard(not struct_exists(parameters, "surface"), "'surface' must be passed.");
    var _surface = parameters["surface"];
    gamemaker_guard(_surface, "'surface' must be resolvable to a surface.");
    var _y_dimension = surface_get_height(_surface);
    return _y_dimension;
}

/// 
/// parameters.surface
/// [parameters.x] {Real}
/// [parameters.y] {Real}
/// NOTE: `surface_resize`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_surface_set_dimensions(parameters) {
    if (argument_count != 1) {
        throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
    }
    if (typeof(parameters) != "struct") {
        throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
    }
    var _surface     = parameters["surface"];
    var _x_dimension = parameters["x"];
    var _y_dimension = parameters["y"];
    gamemaker_guard(not struct_exists(parameters, "surface"), "'parameters.surface' must exist.");
    gamemaker_guard(not (struct_exists(parameters, "x") or struct_exists(parameters, "y")),"'parameters.x' and/or 'parameters.y' must exist.");
    gamemaker_guard(_surface, "'surface' must be resolvable to a surface.");
    gamemaker_guard(_x_dimension, "'x' must be a positive integer.");
    gamemaker_guard(_y_dimension, "'y' must be a positive integer.");
    surface_resize(_surface, _x_dimension, _y_dimension);
    return undefined;
}

/// This function is used to prepare a surface for its creation in an 'Create Event'.
/// Like Surface.create but the actual surface won't be created yet.
/// Call .create to create the surface.
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_surface_precreate(parameters = {}) {
    return _return
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

class GameMakerSurface {

    private = {}

    private.surface_id = is_numeric(arguments) ? arguments : Surface.create(arguments)

    private.cached = {
        width  : get_x_dimension(),
        height : get_y_dimension(),
        format : get_format(),
        depth_buffer_enabled : true,
    }

    ensure_existance = function() {}

    surface_existance_ensurance_enabled = true

    private.ensure_surface_exists = function() {
        if (exists() or !surface_existance_ensurance_enabled) {
            return undefined;
        }

        private.surface_id = Surface.create({
            width  : private.cached.width,
            height : private.cached.height,
            format : private.cached.format,
            depth_buffer_enabled : private.cached.depth_buffer_enabled,
        })
    }

    set_target = function(arguments = {}) {
        private.ensure_surface_exists()
        arguments.surface = this
        gamemaker_rendertarget_set_surface(arguments)
    }

    get_texture = function(arguments = {}) {
        arguments.surface = this
        surface_get_texture
    }

    get_depth_disable = function(arguments = {}) {
        arguments.surface = this
        surface_get_depth_disable
    }

    get_pixel = function(arguments = {}) {
        arguments.surface = this
        surface_getpixel_ext
    }

    save = function(arguments = {}) {
        arguments.surface = this
        surface_save_part
    }

    load_contents_from_buffer = function(arguments = {}) {
        arguments.surface = this

    }

    load_contents_from_buffer = function(arguments = {}) {
        buffer_get_surface(_buffer_id, _surface_id, _offset_bytes)
    }


    save_contents_to_buffer = function(arguments = {}) {
        arguments.surface = this

    }

    save_contents_to_buffer = function(arguments = {}) {

        var _buffer = is_struct(arguments.buffer) ? arguments.buffer : create_buffer_generic({  })

        var _buffer_id    = _buffer.get_id()
        var _surface_id   = is_numeric(arguments.surface) ? arguments.surface : arguments.surface.get_id()
        var _offset_bytes =
        buffer_set_surface(_buffer_id, _surface_id, _offset_bytes)

        return _buffer
    }

    static private = {
        default_blend_alpha : SURFACE_DEFAULT_BLEND_ALPHA,
    }

    = function(arguments = {}) {
        arguments.surface = this
        surface_copy_part
    }

    = function(arguments = {}) {
        arguments.surface = this
        surface_depth_disable
    }

    static build = function(parameters = {}) {
        parameters.surface = this
        gamemaker_surface_build(parameters)
        return this
    }

    static get_x_dimension = function(parameters = {}) {
        parameters.surface = this
        return gamemaker_surface_get_x_dimension(parameters)
    }

    static get_y_dimension = function(parameters = {}) {
        parameters.surface = this
        return gamemaker_surface_get_y_dimension(parameters)
    }

    /// resize
    /// set_height
    /// set_width
    /// set_scaling
    static set_dimensions = function(parameters = {}) {
        parameters.surface = this;
        gamemaker_surface_set_dimensions(parameters);
        return this;
    }

    static get_format = function(parameters = {}) {
        parameters.surface = this
        return gamemaker_surface_get_format(parameters)
    }

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
