// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// 
#macro PRIMITIVE                                                               \
INITIALIZED_CONSTRUCTOR(Primitive)

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――― SCRIPT_FUNCTIONS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function gamemaker_primitive_create(parameters = {}) {

    var _primitive

    with (_primitive) { __gamemaker_primitive_create() }

}

function __gamemaker_primitive_create() {

    private = {
        type          : POINT_LIST_PRIMITIVE_TYPE,
        texture       : undefined,
        vertex_buffer : undefined,
    }

    ///
    create = function(parameters = {}) {
        parameters.primitive = this
        gamemaker_primitive_create(parameters)
        return this
    }

    ///
    get_type = function(parameters = {}) {
        parameters.primitive = this
        gamemaker_primitive_get_type(parameters)
        return this
    }

    ///
    set_type = function(parameters = {}) {
        parameters.primitive = this
        gamemaker_primitive_set_type(parameters)
        return this
    }

    ///
    get_texture = function(parameters = {}) {
        parameters.primitive = this
        gamemaker_primitive_get_texture(parameters)
        return this
    }

    ///
    set_texture = function(parameters = {}) {
        parameters.primitive = this
        gamemaker_primitive_set_texture(parameters)
        return this
    }

    ///
    static add_vertex = function(parameters = {}) {
        parameters.primitive = this
        gamemaker_primitive_add_vertex(parameters)
        return this
    }

    ///
    draw = function(parameters = {}) {
        parameters.primitive = this
        gamemaker_primitive_draw(parameters)
        return this
    }

}

function gamemaker_primitive_get_type(parameters = {}) {
    static _PRIMITIVE = PRIMITIVE

    var _primitive = parameters["primitive"]

    return _primitive.private.type
}

function gamemaker_primitive_set_type(parameters = {}) {
    static _PRIMITIVE = PRIMITIVE

    var _primitive = parameters["primitive"]
    var _type      = parameters["type"]
    _primitive.private.type = _type

    return _PRIMITIVE
}

function gamemaker_primitive_get_texture(parameters = {}) {
    static _PRIMITIVE = PRIMITIVE

    var _primitive = parameters["primitive"]
    return _primitive.private.texture
}

/// 
/// @param {Struct.Primitive} primitive
/// The primitive to target.
///
/// @param {Struct.Texture|undefined} texture
/// The texture to use when drawing the primitive or undefined to not use a texture.
/// @returns {Struct} The static struct of the 'Primitive' constructor.
function gamemaker_primitive_set_texture(parameters = {}) {
    static _PRIMITIVE = PRIMITIVE

    var _primitive = parameters["primitive"]
    var _texture   = parameters["texture"]

    if (!is_texture_struct()) {}

    _primitive.private.texture = _texture

    return _PRIMITIVE
}

/// 
/// @param {Struct.Primitive} primitive
/// The primitive to target.
/// @returns {Struct.Texture}
function gamemaker_primitive_add_vertex(parameters = {}) {
    static _PRIMITIVE = PRIMITIVE

    var _primitive = parameters["primitive"]
    var _vertex    = parameters["vertex"]

    return _PRIMITIVE
}

/// 
/// @param {Struct.Primitive} primitive
/// <parameter_description>
///
/// @param {Type} parameters.parameter_name
/// <parameter_description>
///
/// @param {integer} vertex_offset
/// The index of the first vertex to draw.
///
/// @param {integer} vertex_count
/// The number of vertices to draw. This value is clamped to the size of the vertex buffer.
///
/// @returns {type}
function gamemaker_primitive_draw(parameters = {}) {

    var _primitive = parameters["primitive"]

    var _vertex_buffer_handle    =
    var _primitive_type_constant =
    var _texture_pointer         = _primitive.get_texture().get_pointer() ?? -1

    // submit vertices to gpu for drawing
    vertex_submit(
        _vertex_buffer_handle,
        _primitive_type_constant,
        _texture_pointer
    )

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――― SCRIPT_FUNCTIONS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

PRIMITIVE

class Primitive {

    ///
    static create = gamemaker_primitive_create

    ///
    static get_type = gamemaker_primitive_get_type

    ///
    static set_type = gamemaker_primitive_set_type

    ///
    static get_texture = gamemaker_primitive_get_texture

    ///
    static set_texture = gamemaker_primitive_set_texture

    ///
    static add_vertex = gamemaker_primitive_add_vertex

    ///
    static draw = gamemaker_primitive_draw

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/*******************************************************************************/
//     ―――――――――――――――――――― DRAW TRIANGLE ――――――――――――――――――――
/*******************************************************************************/

function gamemaker_triangle_draw(arguments = {}) {

    /*******************************************************************************
    ―――――――――――――――――――― PARAMETERS ――――――――――――――――――――
    *******************************************************************************/

    var a = arguments

    var parameters = {
        // BASIC
        vertices : a.vertices,
        colours : a["colours"] ?? new Array(3).fill(Colour.White),
        outline : false,

        // ADDITIONAL
        alpha : a["alpha"] ?? 1,
    }

    var p = parameters

    /*******************************************************************************
    ―――――――――――――――――――― RESCALE ――――――――――――――――――――
    *******************************************************************************/

    if (struct_exists(arguments, "canvas_scale")) {

        for (let i = 0; i < 3; i++) {
            p.vertices[i][0] *= a.canvas_scale
            p.vertices[i][1] *= a.canvas_scale
        }

        var _xmin = Math.min(p.vertices[0][0], p.vertices[1][0], p.vertices[2][0])
        var _xmax = Math.max(p.vertices[0][0], p.vertices[1][0], p.vertices[2][0])
        var _ymin = Math.min(p.vertices[0][1], p.vertices[1][1], p.vertices[2][1])
        var _ymax = Math.max(p.vertices[0][1], p.vertices[1][1], p.vertices[2][1])

        /*
        for (let i = 0; i < 3; i++) {
            // X
            if (p.vertices[i][0] == _xmax) {
                p.vertices[i][0] += (a.canvas_scale - 1)
            } else if (p.vertices[i][0] != _xmin) {
                p.vertices[i][0] += Interpolation.inverse_lerp(_xmin, _xmax, p.vertices[i][0]) * (a.canvas_scale - 1)
            }
            // Y
            if (p.vertices[i][1] == _ymax) {
                p.vertices[i][1] += (a.canvas_scale - 1)
            } else if (p.vertices[i][1] != _ymin) {
                p.vertices[i][1] += Interpolation.inverse_lerp(_ymin, _ymax, p.vertices[i][1]) * (a.canvas_scale - 1)
            }
        }
        */
    }

    /*******************************************************************************
    ―――――――――――――――――――― CONVENIENCE ――――――――――――――――――――
    *******************************************************************************/

    /* ―――――――――――――――――――― COLOUR ―――――――――――――――――――― */
    if (struct_exists(a, "colour")) { p.colours = new Array(3).fill(a.colour) }

    /*******************************************************************************
    ―――――――――――――――――――― PRE-DRAW ――――――――――――――――――――
    *******************************************************************************/

    var preserved = {
        alpha : draw_get_alpha(),
    }

    draw_set_alpha(p.alpha)

    /*******************************************************************************
    ―――――――――――――――――――― DRAWING ――――――――――――――――――――
    *******************************************************************************/

    draw_triangle_colour(
        parameters.vertices[0][0],
        parameters.vertices[0][1],
        parameters.vertices[1][0],
        parameters.vertices[1][1],
        parameters.vertices[2][0],
        parameters.vertices[2][1],
        parameters.colours[0],
        parameters.colours[1],
        parameters.colours[2],
        parameters.outline
    )

    /*******************************************************************************
    ―――――――――――――――――――― POST-DRAW ――――――――――――――――――――
    *******************************************************************************/

    draw_set_alpha(preserved.alpha)

}


/*******************************************************************************/
//  ―――――――――――――――――――― DRAW TRIANGLE ――――――――――――――――――――
/*******************************************************************************/
