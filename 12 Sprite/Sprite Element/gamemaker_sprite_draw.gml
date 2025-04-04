
/// ----------------------------------------------------------------------------
/// @function gamemaker_sprite_draw(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {mixed} sprite
/// @parameter {number} x_position
/// @parameter {number} y_position
/// @parameter {number} x_alignment
/// @parameter {number} y_alignment
/// @parameter {number} x_dimension
/// @parameter {number} y_dimension
/// @parameter {number} x_scale
/// @parameter {number} y_scale

/// @parameter {Type} fragment_x0
/// @parameter {Type} fragment_x1
/// @parameter {Type} fragment_y0
/// @parameter {Type} fragment_y1

/// @parameter {number} x_rotation
/// @parameter {number} y_rotation
/// @parameter {number} z_rotation

/// @parameter {Type} solid_blend_colour
/// @parameter {Type} solid_blend_alpha
//
/// @parameter {Type} gradient_blend_colour_0
/// @parameter {Type} gradient_blend_colour_1
/// @parameter {Type} gradient_blend_colour_2
/// @parameter {Type} gradient_blend_colour_3
/// @parameter {Type} gradient_blend_alpha_0
/// @parameter {Type} gradient_blend_alpha_1
/// @parameter {Type} gradient_blend_alpha_2
/// @parameter {Type} gradient_blend_alpha_3

/// @parameter {boolean} tiled
/// @parameter {Type} target
/// @parameter {Type} blendmode
/// @parameter {Type} shader
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_sprite_draw(parameters) {

    var _sprite = parameters.sprite

    if (is_struct(_sprite)) {
        _sprite.draw(parameters)
        return _sprite
    }

    var _frame = parameters.frame

    var _x_position  =
    var _y_position  =
    var _x_dimension = parameters.x_position ?? _ * parameters.x_scale
    var _y_dimension = parameters.y_position ?? _ * parameters.y_scale

    draw_settings_save()

    draw_settings_apply()

    // draw_sprite_general(sprite, subimg, left, top, width, height, x, y, xscale, yscale, rot, c1, c2, c3, c4, alpha)

    draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(_sprite, _frame))
    draw_vertex_texture_colour(_x_position               , _y_position               , 0, 0, #FFFFFF, 1)
    draw_vertex_texture_colour(_x_position               , _y_position + _y_dimension, 0, 1, #FFFFFF, 1)
    draw_vertex_texture_colour(_x_position + _x_dimension, _y_position               , 1, 0, #FFFFFF, 1)
    draw_vertex_texture_colour(_x_position + _x_dimension, _y_position + _y_dimension, 1, 1, #FFFFFF, 1)
    draw_primitive_end()

    draw_settings_restore()

    return _sprite
}