/// 
/// @param {mixed} sprite
/// @param {Real} x_position
/// @param {Real} y_position
/// @param {Real} x_alignment
/// @param {Real} y_alignment
/// @param {Real} x_dimension
/// @param {Real} y_dimension
/// @param {Real} x_scale
/// @param {Real} y_scale

import { Transformation } from "@gamemaker/math/Transformation";

/// @param {Real} x_rotation
/// @param {Real} y_rotation
/// @param {Real} z_rotation

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

/// @param {Bool} tiled
/// @param {Type} target
/// @param {Type} blendmode
/// @param {Type} shader
/// @returns {type}
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
    draw_vertex_texture_colour(_x_position               , _y_position               , 0, 0, Colour.White, 1)
    draw_vertex_texture_colour(_x_position               , _y_position + _y_dimension, 0, 1, Colour.White, 1)
    draw_vertex_texture_colour(_x_position + _x_dimension, _y_position               , 1, 0, Colour.White, 1)
    draw_vertex_texture_colour(_x_position + _x_dimension, _y_position + _y_dimension, 1, 1, Colour.White, 1)
    draw_primitive_end()

    draw_settings_restore()

    return _sprite
}

/**
 * 
 */
export class SpriteElement {

    /// set_alpha
    /// set_default_scale animate set_origin set_alignment set_fragment set_gradient_fill rectangle({})
    /// .set_blending({ colour: , alpha:  })
    /// .set_blending({ alpha:  }) .set_blending({ colour:  })
    /// .set_fragmentposition .set_fragmentdimensions
    
    /// 
    /// ---
    /// {string|handle|integer} parameters.sprite The sprite to display.
    /// {integer} [parameters.frame=0] The index of the frame of the sprite to display. Defaults to 0.
    /// @returns {Struct.SpriteElement}
    // function gamemaker_spriteelement_create(parameters = {}) {

    //     var _spriteelement = new SpriteElement()

    //     _spriteelement.private = {
    //         sprite     : undefined,
    //         frame      : 0,
    //         x_origin   : 0,
    //         y_origin   : 0,
    //         x_scale    : 1,
    //         y_scale    : 1,
    //         x_position: 0,
    //         y_position: 0,
    //         bendcolour : Colour.White,
    //         blendalpha : 1,
    //         x_rotation : 0,
    //         y_rotation : 0,
    //         z_rotation : 0,
    //         subimage   : { x : [0, 0], y : [0, 0] },
    //     }

    //     return _spriteelement
    // }

    /**
     * The sprite assigned to this sprite element.
     */
    public get sprite() {

    }

    public set sprite(sprite) {

    }

    public get transform(): Transformation {
        return new Transformation();
    }

    public draw(): void {

    }

    /// # offset
    private.x_offset = 0
    private.y_offset = 0

    this.x_offset = method(this, Drawable.x_offset)
    this.y_offset = method(this, Drawable.y_offset)
    this.offset   = method(this, Drawable.offset)

    /// # alignment
    private.x_alignment = 0
    private.y_alignment = 0

    this.get_x_alignment = method(this, Drawable.get_x_alignment)
    this.get_y_alignment = method(this, Drawable.get_y_alignment)
    this.set_alignment   = method(this, Drawable.set_alignment)

    /// # dimensions
    private.x_dimensions = 0
    private.y_dimensions = 0

    this.get_x_dimension = method(this, Drawable.get_x_dimension)
    this.get_y_dimension = method(this, Drawable.get_y_dimension)
    this.set_dimensions   = method(this, Drawable.set_dimensions)

    /// # blending
    private.blend_colour = 0
    private.blend_alpha  = 0
    private.blendmode   = 0

    this.get_blend_colour = method(this, Drawable.get_blend_colour)
    this.get_blend_alpha  = method(this, Drawable.get_blend_alpha)
    this.get_blendmode    = method(this, Drawable.get_blendmode)
    this.set_blending     = method(this, Drawable.set_blending)

    /// # shading
    private.shader
    private.shader_variables

}