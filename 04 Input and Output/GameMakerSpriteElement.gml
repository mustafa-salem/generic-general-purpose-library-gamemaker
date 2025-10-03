/// set_alpha
/// set_default_scale animate set_origin set_alignment set_fragment set_gradient_fill rectangle({})
/// .set_blending({ colour: , alpha:  })
/// .set_blending({ alpha:  }) .set_blending({ colour:  })
/// .set_fragmentposition .set_fragmentdimensions
 
/// 
/// ---
/// {string|handle|integer} parameters.sprite The sprite to display.
/// {integer} [parameters.frame=0] The index of the frame of the sprite to display. Defaults to 0.
/// @returns {Struct.GameMakerSpriteElement}
function gamemaker_spriteelement_create(parameters = {}) {

    var _spriteelement = new GameMakerSpriteElement()

    _spriteelement.private = {
        sprite     : undefined,
        frame      : 0,
        x_origin   : 0,
        y_origin   : 0,
        x_scale    : 1,
        y_scale    : 1,
        x_position : 0,
        y_position : 0,
        bendcolour : #FFFFFF,
        blendalpha : 1,
        x_rotation : 0,
        y_rotation : 0,
        z_rotation : 0,
        subimage   : { x : [0, 0], y : [0, 0] },
    }

    return _spriteelement
}

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
    draw_vertex_texture_colour(_x_position               , _y_position               , 0, 0, #FFFFFF, 1)
    draw_vertex_texture_colour(_x_position               , _y_position + _y_dimension, 0, 1, #FFFFFF, 1)
    draw_vertex_texture_colour(_x_position + _x_dimension, _y_position               , 1, 0, #FFFFFF, 1)
    draw_vertex_texture_colour(_x_position + _x_dimension, _y_position + _y_dimension, 1, 1, #FFFFFF, 1)
    draw_primitive_end()

    draw_settings_restore()

    return _sprite
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

///
function GameMakerSpriteElement() constructor {

    private = {}

    /// ----------------------------------------------------------------------------
    /// # position
    /// ----------------------------------------------------------------------------
    private.x_position = 0
    private.y_position = 0
    private.z_position = undefined

    self.get_x_position = method(self, Drawable.get_x_position)
    self.get_y_position = method(self, Drawable.get_y_position)
    self.get_z_position = method(self, Drawable.get_z_position)
    self.set_position   = method(self, Drawable.set_position)

    /// ----------------------------------------------------------------------------
    /// # offset
    /// ----------------------------------------------------------------------------
    private.x_offset = 0
    private.y_offset = 0

    self.x_offset = method(self, Drawable.x_offset)
    self.y_offset = method(self, Drawable.y_offset)
    self.offset   = method(self, Drawable.offset)

    /// ----------------------------------------------------------------------------
    /// # alignment
    /// ----------------------------------------------------------------------------
    private.x_alignment = 0
    private.y_alignment = 0

    self.get_x_alignment = method(self, Drawable.get_x_alignment)
    self.get_y_alignment = method(self, Drawable.get_y_alignment)
    self.set_alignment   = method(self, Drawable.set_alignment)

    /// ----------------------------------------------------------------------------
    /// # dimensions
    /// ----------------------------------------------------------------------------
    private.x_dimensions = 0
    private.y_dimensions = 0

    self.get_x_dimension = method(self, Drawable.get_x_dimension)
    self.get_y_dimension = method(self, Drawable.get_y_dimension)
    self.set_dimensions   = method(self, Drawable.set_dimensions)

    /// ----------------------------------------------------------------------------
    /// # scale
    /// ----------------------------------------------------------------------------
    private.x_scale = 0
    private.y_scale = 0

    self.get_x_scale = method(self, Drawable.get_x_scale)
    self.get_y_scale = method(self, Drawable.get_y_scale)
    self.set_scaling   = method(self, Drawable.set_scaling)

    /// ----------------------------------------------------------------------------
    /// # rotation
    /// ----------------------------------------------------------------------------
    private.x_rotation = 0
    private.y_rotation = 0
    private.z_rotation = 0

    self.get_x_rotation = method(self, Drawable.get_x_rotation)
    self.get_y_rotation = method(self, Drawable.get_y_rotation)
    self.get_z_rotation = method(self, Drawable.get_z_rotation)
    self.set_rotation   = method(self, Drawable.set_rotation)

    /// ----------------------------------------------------------------------------
    /// # blending
    /// ----------------------------------------------------------------------------
    private.blend_colour = 0
    private.blend_alpha  = 0
    private.blendmode   = 0

    self.get_blend_colour = method(self, Drawable.get_blend_colour)
    self.get_blend_alpha  = method(self, Drawable.get_blend_alpha)
    self.get_blendmode    = method(self, Drawable.get_blendmode)
    self.set_blending     = method(self, Drawable.set_blending)

    /// ----------------------------------------------------------------------------
    /// # shading
    /// ----------------------------------------------------------------------------
    private.shader
    private.shader_variables

    /// ----------------------------------------------------------------------------
    /// # drawing
    /// ----------------------------------------------------------------------------

    /// 
    self.draw = function() {

    };

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
