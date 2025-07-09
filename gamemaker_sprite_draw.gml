
/// ----------------------------------------------------------------------------
/// @function gamemaker_sprite_draw(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {mixed} sprite
/// @param {number} x_position
/// @param {number} y_position
/// @param {number} x_alignment
/// @param {number} y_alignment
/// @param {number} x_dimension
/// @param {number} y_dimension
/// @param {number} x_scale
/// @param {number} y_scale

/// @param {Type} fragment_x0
/// @param {Type} fragment_x1
/// @param {Type} fragment_y0
/// @param {Type} fragment_y1

/// @param {number} x_rotation
/// @param {number} y_rotation
/// @param {number} z_rotation

/// @param {Type} solid_blend_colour
/// @param {Type} solid_blend_alpha
//
/// @param {Type} gradient_blend_colour_0
/// @param {Type} gradient_blend_colour_1
/// @param {Type} gradient_blend_colour_2
/// @param {Type} gradient_blend_colour_3
/// @param {Type} gradient_blend_alpha_0
/// @param {Type} gradient_blend_alpha_1
/// @param {Type} gradient_blend_alpha_2
/// @param {Type} gradient_blend_alpha_3

/// @param {boolean} tiled
/// @param {Type} target
/// @param {Type} blendmode
/// @param {Type} shader
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