// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
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
#endregion ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
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
    var _render_target = parameters[$ "render_target"] ?? 0
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
/// @param {Real} [colour] The colour with which to clear the surface. [0, #FFFFFF]
/// @param {Real} [alpha] The transparency of the colour with which to clear the surface. [0, 1]
function gamemaker_surface_clear(parameters = {}) {
    var _colour = parameters[$ "colour"] ?? #000000
    var _alpha  = parameters[$ "alpha"]  ?? 1
    draw_clear_alpha(_colour, _alpha)
}

/// 
/// x_dimension {Real}
/// y_dimension {Real}
/// [format] {constant} 
/// [garbage_collection] {Bool} Whether to garbage collect the native surface when the struct is garbage collected.
/// [existance_ensureance] {Bool}
/// Whether to ensure that the native surface exists when trying to perform a
/// operation on it.
/// NOTE: `surface_create`, `surface_create_ext`
/// @returns {Struct.GameMakerSurface}
function gamemaker_surface_create(parameters) {
    var _x_dimension          = parameters[$ "x_dimension"]
    var _y_dimension          = parameters[$ "y_dimension"]
    var _format               = parameters[$ "format"]               ?? SURFACE_DEFAULT_FORMAT
    var _garbage_collection   = parameters[$ "garbage_collection"]   ?? SURFACE_DEFAULT_GARBAGE_COLLECTION
    var _existance_ensureance = parameters[$ "existance_ensureance"] ?? SURFACE_DEFAULT_EXISTANCE_ENSURANCE
    surface_create(_x_dimension, _y_dimension, _format)
    return new GameMakerSurface();
}

/// * surface_free
/// @param {mixed} surface The value or the array of values that identify the surface to destroy.
function gamemaker_surface_destroy(parameters) {
    var _surface = parameters[$ "surface"]
    if (!is_array(_surface)) { _surface = [_surface] }
    for (let i = 0; i < array_length(_surface); i++) {
        if (is_struct(_surface[i])) {
            _surface[i].destroy(parameters)
        } else if (surface_exists(_surface)) {
            surface_free(arguments.surface.surface_id)
        }
    }
}

/// Draws a surface using any combination of parameters passed through the
/// "parameters" struct. (argument0)
/// There are no required parameters; however, setting any parameter to an
/// invalid value may cause an exception of type Struct.Exception to be thrown.
/// The static struct of the "GameMakerSurface" constructor function is returned for the
/// purpose of implementing a fluent interface.
/// @param {mixed} surface The surface to draw.
/// @param {type} vertices Can be used instead of [position, alignment, dimension, scale] to directly set where the surface is drawn. { x_position : , y_position : , x_texture_coordinate : , y_texture_coordinate : , blend_colour : , blend_alpha : }
/// @param {Real} x_position The x position where to draw the surface onto the render target.
/// @param {Real} y_position The y position where to draw the surface onto the render target.
/// @param {Real} x_alignment valid range : [0, 1]
/// @param {Real} y_alignment valid range : [0, 1]
/// @param {Real} x_dimension The x dimensions the surface should be drawn with.
/// @param {Real} y_dimension The y dimensions the surface should be drawn with.
/// @param {type} x_rotation valid range : [0, 1]
/// @param {type} y_rotation valid range : [0, 1]
/// @param {type} z_rotation valid range : [0, 1]
/// @param {type} fragment_vertices Can be used instead of [position, alignment, dimension, scale] to directly set what part of the surface is drawn.
/// @param {type} parameter_name
/// @param {type} parameter_name
/// @param {type} parameter_name
/// @param {type} parameter_name
/// @param {type} blend_colour
/// @param {type} blend_alpha
/// @param {type} blend_gradient
/// @param {Bool} tiled
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_surface_draw(parameters) {
    // x : [100, 200] or [0.1, 0.2]
    // y : [0, 50] or [0, 0.1]
    // x_pixel_range
    // x_fragment_texture_range
    // x_pixel_range
    // surface
    var _surface
    // early return: surface doesn't exist
    if (!surface_exists(_surface)) {
        // if (!gamemaker_surface_exists({ surface : _surface })) { return _SURFACE }
    }
    // position
    var _x_position = parameters[$ "x_position"] ?? 0
    var _y_position = parameters[$ "y_position"] ?? 0
    // alignment
    var _x_alignment = parameters[$ "x_alignment"] ?? 0
    var _y_alignment = parameters[$ "y_alignment"] ?? 0
    // dimension
    var _x_dimension = parameters[$ "x_dimension"] ?? _surface.get_x_dimension()
    var _y_dimension = parameters[$ "y_dimension"] ?? _surface.surface_get_y_dimension()
    // rotation
    var _x_rotation = parameters[$ "x_rotation"] ?? 0
    var _y_rotation = parameters[$ "y_rotation"] ?? 0
    var _z_rotation = parameters[$ "z_rotation"] ?? 0
    // blend
    var _blend_colour = parameters[$ "blend_colour"] ?? #FFFFFF
    var _blend_alpha  = parameters[$ "blend_alpha"]  ?? 1
    var _vertices = []
    _vertices[0] = {
        x_position           : _x_position,
        y_position           : _y_position,
        x_texture_coordinate : 0,
        y_texture_coordinate : 0,
        blend_colour         : _blend_colour,
        blend_alpha          : _blend_alpha,
    }
    _vertices[1] = {
        x_position           : _x_position + _x_dimension,
        y_position           : _y_position,
        x_texture_coordinate : 1,
        y_texture_coordinate : 0,
        blend_colour         : _blend_colour,
        blend_alpha          : _blend_alpha,
    }
    _vertices[2] = {
        x_position           : _x_position,
        y_position           : _y_position + _y_dimension,
        x_texture_coordinate : 0,
        y_texture_coordinate : 1,
        blend_colour         : _blend_colour,
        blend_alpha          : _blend_alpha,
    }
    _vertices[3] = {
        x_position           : _x_position + _x_dimension,
        y_position           : _y_position + _y_dimension,
        x_texture_coordinate : 1,
        y_texture_coordinate : 1,
        blend_colour         : _blend_colour,
        blend_alpha          : _blend_alpha,
    }
    // draw primitive
    draw_primitive_begin_texture(pr_trianglestrip, surface_get_texture(_surface))
    for (let i = 0; i < 4; i++) { with (_vertices[i]) { draw_vertex_texture_colour(x_position, y_position, x_texture_coordinate, y_texture_coordinate, blend_colour, blend_alpha) } }
    draw_primitive_end()
    _blendmode.set()
    _shader.set()
    // DRAW SURFACE TEXTURE
    var _primitive = new Primitive({
        type : TRIANGLE_STRIP_PRIMITIVE_TYPE,
        texture : gamemaker_surface_get_texture({ surface : _surface }),
    })
    vb = vertex_create_buffer();
    _primitive
    .add_vertex({
        position : { x : _position.left, y : _position.top },
        texture_coordinates : { x : _texture_coordinates.left, y : _texture_coordinates.top },
        blend : { colour: , alpha  :  },
    })
    .add_vertex({
        position : { x : _position.left, y : _position.bottom },
        texture_coordinates : { x : _texture_coordinates.left, y : _texture_coordinates.bottom },
        blend : { colour: , alpha  :  },
    })
    .add_vertex({
        position : { x : _position.right, y : _position.top },
        texture_coordinates : { x : _texture_coordinates.right, y : _texture_coordinates.top },
        blend : { colour: , alpha  :  },
    })
    .add_vertex({
        position : { _position.right, y : _position.bottom },
        texture_coordinates : { _texture_coordinates.right, y : _texture_coordinates.bottom },,
        blend : { colour: , alpha  :  },
    })

    _primitive.draw()

    _blendmode.unset()
    _shader.unset()

    return _SURFACE

    return _return
}

gamemaker_surface_draw({
    surface : <value>,
    position : {
        x : <value>,
        y : <value>,
    },
    scale : {
        x : <value>,
        y : <value>,
    },
    blend : {
        colour : <value>,
        alpha  : <value>,
        mode   : <value>,
    },
})

/// This is a generification of <surface_exists>.
/// This function checks if a surface exists.
/// @param {mixed} surface The value that identifies the surface to target. (id|handle|struct)
/// @returns {Bool}
function gamemaker_surface_exists(parameters) {
    var _surface = parameters[$ "surface"]
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
    var _surface = parameters[$ "surface"];
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
    var _surface     = parameters[$ "surface"];
    var _x_dimension = parameters[$ "x"];
    var _y_dimension = parameters[$ "y"];
    gamemaker_guard(not struct_exists(parameters, "surface"), "'parameters.surface' must exist.");
    gamemaker_guard(not (struct_exists(parameters, "x") or struct_exists(parameters, "y")),"'parameters.x' and/or 'parameters.y' must exist.");
    gamemaker_guard(_surface, "'surface' must be resolvable to a surface.");
    gamemaker_guard(_x_dimension, "'x' must be a positive integer.");
    gamemaker_guard(_y_dimension, "'y' must be a positive integer.");
    surface_resize(_surface, _x_dimension, _y_dimension);
    return undefined;
}

/// This function is used to prepare a surface for its creation in an 'Create Event'.
/// Like gamemaker_surface_create but the actual surface won't be created yet.
/// Call .create to create the surface.
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_surface_precreate(parameters = {}) {
    return _return
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

class GameMakerSurface {

    private = {}

    private.surface_id = is_numeric(arguments) ? arguments : gamemaker_surface_create(arguments)

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

        private.surface_id = gamemaker_surface_create({
            width  : private.cached.width,
            height : private.cached.height,
            format : private.cached.format,
            depth_buffer_enabled : private.cached.depth_buffer_enabled,
        })
    }

    set_target = function(arguments = {}) {
        private.ensure_surface_exists()
        arguments.surface = self
        gamemaker_rendertarget_set_surface(arguments)
    }

    get_texture = function(arguments = {}) {
        arguments.surface = self
        surface_get_texture
    }

    get_depth_disable = function(arguments = {}) {
        arguments.surface = self
        surface_get_depth_disable
    }

    get_pixel = function(arguments = {}) {
        arguments.surface = self
        surface_getpixel_ext
    }

    save = function(arguments = {}) {
        arguments.surface = self
        surface_save_part
    }

    load_contents_from_buffer = function(arguments = {}) {
        arguments.surface = self

    }

    load_contents_from_buffer = function(arguments = {}) {
        buffer_get_surface(_buffer_id, _surface_id, _offset_bytes)
    }


    save_contents_to_buffer = function(arguments = {}) {
        arguments.surface = self

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
        arguments.surface = self
        surface_copy_part
    }

    = function(arguments = {}) {
        arguments.surface = self
        surface_depth_disable
    }

    static build = function(parameters = {}) {
        parameters.surface = self
        gamemaker_surface_build(parameters)
        return self
    }

    static get_x_dimension = function(parameters = {}) {
        parameters.surface = self
        return gamemaker_surface_get_x_dimension(parameters)
    }

    static get_y_dimension = function(parameters = {}) {
        parameters.surface = self
        return gamemaker_surface_get_y_dimension(parameters)
    }

    /// resize
    /// set_height
    /// set_width
    /// set_scaling
    static set_dimensions = function(parameters = {}) {
        parameters.surface = self;
        gamemaker_surface_set_dimensions(parameters);
        return self;
    }

    static get_format = function(parameters = {}) {
        parameters.surface = self
        return gamemaker_surface_get_format(parameters)
    }

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
