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
/*
function Surface.create(parameters) {
    var _x_dimension          = parameters["x_dimension"]
    var _y_dimension          = parameters["y_dimension"]
    var _format               = parameters["format"]               ?? SURFACE_DEFAULT_FORMAT
    var _garbage_collection   = parameters["garbage_collection"]   ?? SURFACE_DEFAULT_GARBAGE_COLLECTION
    var _existance_ensureance = parameters["existance_ensureance"] ?? SURFACE_DEFAULT_EXISTANCE_ENSURANCE
    surface_create(_x_dimension, _y_dimension, _format)
    return new GameMakerSurface();
}
*/

export class Surface {

    #handle = null;

    public static create(): Surface {
        return new Surface();
    }

    /**
     * gamemaker_surface_exists
     */
    public exists(): boolean {
        return false;
    }

    /**
     * gamemaker_surface_destroy
     */
    public destroy(): this {
        return this;
    }

    /**
     * gamemaker_surface_draw
     */
    public draw(): this {
        return this;
    }

}

/// Draws a surface using any combination of parameters passed through the
/// "parameters" struct. (argument0)
/// There are no required parameters; however, setting any parameter to an
/// invalid value may cause an exception of type Struct.Exception to be thrown.
/// The static struct of the "GameMakerSurface" constructor function is returned for the
/// purpose of implementing a fluent interface.
/// @param {mixed} surface The surface to draw.
/// @param {type} vertices Can be used instead of [position, alignment, dimension, scale] to directly set where the surface is drawn. { x_position: , y_position: , x_texture_coordinate : , y_texture_coordinate : , blend_colour : , blend_alpha : }
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
    var _x_position = parameters["x_position"] ?? 0
    var _y_position = parameters["y_position"] ?? 0
    // alignment
    var _x_alignment = parameters["x_alignment"] ?? 0
    var _y_alignment = parameters["y_alignment"] ?? 0
    // dimension
    var _x_dimension = parameters["x_dimension"] ?? _surface.get_x_dimension()
    var _y_dimension = parameters["y_dimension"] ?? _surface.surface_get_y_dimension()
    // rotation
    var _x_rotation = parameters["x_rotation"] ?? 0
    var _y_rotation = parameters["y_rotation"] ?? 0
    var _z_rotation = parameters["z_rotation"] ?? 0
    // blend
    var _blend_colour = parameters["blend_colour"] ?? Colour.White
    var _blend_alpha  = parameters["blend_alpha"]  ?? 1
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