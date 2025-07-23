// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
#macro PRIMITIVE                                                               \
INITIALIZED_CONSTRUCTOR(Primitive)

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― SCRIPT_FUNCTIONS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// ----------------------------------------------------------------------------
/// @function gamemaker_primitive_create(parameters)
/// ----------------------------------------------------------------------------
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

	/// @function create(parameters)
	create = function(parameters = {}) {
		parameters.primitive = self
		gamemaker_primitive_create(parameters)
		return self
	}

	/// @function get_type(parameters)
	get_type = function(parameters = {}) {
		parameters.primitive = self
		gamemaker_primitive_get_type(parameters)
		return self
	}

	/// @function set_type(parameters)
	set_type = function(parameters = {}) {
		parameters.primitive = self
		gamemaker_primitive_set_type(parameters)
		return self
	}

	/// @function get_texture(parameters)
	get_texture = function(parameters = {}) {
		parameters.primitive = self
		gamemaker_primitive_get_texture(parameters)
		return self
	}

	/// @function set_texture(parameters)
	set_texture = function(parameters = {}) {
		parameters.primitive = self
		gamemaker_primitive_set_texture(parameters)
		return self
	}

	/// @function add_vertex(parameters)
    static add_vertex = function(parameters = {}) {
		parameters.primitive = self
		gamemaker_primitive_add_vertex(parameters)
		return self
	}

	/// @function draw(parameters)
	draw = function(parameters = {}) {
		parameters.primitive = self
		gamemaker_primitive_draw(parameters)
		return self
	}

}

/// ----------------------------------------------------------------------------
/// @function gamemaker_primitive_get_type(parameters)
/// ----------------------------------------------------------------------------
function gamemaker_primitive_get_type(parameters = {}) {
	static _PRIMITIVE = PRIMITIVE

	var _primitive = parameters[$ "primitive"]

	return _primitive.private.type
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_primitive_set_type(parameters)
/// ----------------------------------------------------------------------------
function gamemaker_primitive_set_type(parameters = {}) {
	static _PRIMITIVE = PRIMITIVE

	var _primitive = parameters[$ "primitive"]
	var _type      = parameters[$ "type"]
	_primitive.private.type = _type

	return _PRIMITIVE
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_primitive_get_texture(parameters)
/// ----------------------------------------------------------------------------
function gamemaker_primitive_get_texture(parameters = {}) {
	static _PRIMITIVE = PRIMITIVE

	var _primitive = parameters[$ "primitive"]
	return _primitive.private.texture
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_primitive_set_texture(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {struct.Primitive} primitive
/// The primitive to target.
///
/// @param {struct.Texture|undefined} texture
/// The texture to use when drawing the primitive or undefined to not use a texture.
/// ----------------------------------------------------------------------------
/// @returns {struct} The static struct of the 'Primitive' constructor.
/// ----------------------------------------------------------------------------
function gamemaker_primitive_set_texture(parameters = {}) {
	static _PRIMITIVE = PRIMITIVE

	var _primitive = parameters[$ "primitive"]
	var _texture   = parameters[$ "texture"]

    if (!is_texture_struct()) {}

	_primitive.private.texture = _texture

	return _PRIMITIVE
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_primitive_get_texture(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {struct.Primitive} primitive
/// The primitive to target.
/// ----------------------------------------------------------------------------
/// @returns {struct.Texture}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_primitive_add_vertex(parameters = {}) {
	static _PRIMITIVE = PRIMITIVE

	var _primitive = parameters[$ "primitive"]
	var _vertex    = parameters[$ "vertex"]

	return _PRIMITIVE
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_primitive_draw(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {struct.Primitive} primitive
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
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_primitive_draw(parameters = {}) {

    var _primitive = parameters[$ "primitive"]

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
#endregion ―――――――――――――――――――― SCRIPT_FUNCTIONS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

PRIMITIVE

function Primitive() constructor {

    /// @function create(parameters)
    static create = gamemaker_primitive_create

    /// @function get_type(parameters)
    static get_type = gamemaker_primitive_get_type

    /// @function set_type(parameters)
    static set_type = gamemaker_primitive_set_type

    /// @function get_texture(parameters)
    static get_texture = gamemaker_primitive_get_texture

    /// @function set_texture(parameters)
    static set_texture = gamemaker_primitive_set_texture

	/// @function add_vertex(parameters)
    static add_vertex = gamemaker_primitive_add_vertex

    /// @function draw(parameters)
    static draw = gamemaker_primitive_draw

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/*******************************************************************************/
#region    ―――――――――――――――――――― DRAW TRIANGLE ――――――――――――――――――――
/*******************************************************************************/

function gamemaker_triangle_draw(arguments = {}) {

    /*******************************************************************************
    ―――――――――――――――――――― PARAMETERS ――――――――――――――――――――
    *******************************************************************************/

	var a = arguments

    var parameters = {
		// BASIC
        vertices : a.vertices,
        colours : a[$ "colours"] ?? array_create(3, #FFFFFF),
        outline : false,

		// ADDITIONAL
		alpha : a[$ "alpha"] ?? 1,
    }

	var p = parameters

	/*******************************************************************************
	―――――――――――――――――――― RESCALE ――――――――――――――――――――
	*******************************************************************************/

	if (struct_exists(arguments, "canvas_scale")) {

		for (var i = 0; i < 3; i++) {
			p.vertices[i][0] *= a.canvas_scale
			p.vertices[i][1] *= a.canvas_scale
		}

		var _xmin = min(p.vertices[0][0], p.vertices[1][0], p.vertices[2][0])
		var _xmax = max(p.vertices[0][0], p.vertices[1][0], p.vertices[2][0])
		var _ymin = min(p.vertices[0][1], p.vertices[1][1], p.vertices[2][1])
		var _ymax = max(p.vertices[0][1], p.vertices[1][1], p.vertices[2][1])

		/*
		for (var i = 0; i < 3; i++) {
			// X
			if (p.vertices[i][0] == _xmax) {
				p.vertices[i][0] += (a.canvas_scale - 1)
			} else if (p.vertices[i][0] != _xmin) {
				p.vertices[i][0] += inverse_lerp_generic(_xmin, _xmax, p.vertices[i][0]) * (a.canvas_scale - 1)
			}
			// Y
			if (p.vertices[i][1] == _ymax) {
				p.vertices[i][1] += (a.canvas_scale - 1)
			} else if (p.vertices[i][1] != _ymin) {
				p.vertices[i][1] += inverse_lerp_generic(_ymin, _ymax, p.vertices[i][1]) * (a.canvas_scale - 1)
			}
		}
		*/
	}

    /*******************************************************************************
    ―――――――――――――――――――― CONVENIENCE ――――――――――――――――――――
    *******************************************************************************/

    /* ―――――――――――――――――――― COLOUR ―――――――――――――――――――― */
    if (struct_exists(a, "colour")) { p.colours = array_create(3, a.colour) }

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
#endregion ―――――――――――――――――――― DRAW TRIANGLE ――――――――――――――――――――
/*******************************************************************************/
