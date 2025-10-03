// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// This struct offers a fluent interface to prepare a rectange for drawing.
/// It has the properties listed below. All of these are to be accessed by static
/// getter/setter functions. Properties belonging together have combined acessor
/// functions alongside their basic accessors.
///
/// @param {Struct} position { x : Real, y : Real }
/// The x and y coordinates of the rectangle origin on the render target.
///
/// @param {Struct} dimensions { x : Real, y : Real }
/// The (base) x and y dimensions of the rectangle on the render target.
///
/// @param {Struct} alignment { x : Real, y : Real }
/// The x and y alignment of the rectangle relative to it's origin. Ranges from
/// 0 to 1. 0 meaning top/left and 1 meaning bottom/right. 0.5 means centered.
///
/// @param {Struct} scale { x : Real, y : Real }
/// The x and y scaling factors applied to the rectangle's dimensional components.
///
/// @param {Struct} rotation { x : Real, y : Real, z : Real }
/// The rotation of the rectangle around it's origin around the x, y and z axis.
/// These values are normalized. 1 meaning being equal to 360° or 2pi radiants.
///
/// @param {Struct} solid_fill
/// The container for information regarding the rectangles solid fill.
///
/// @param {Struct} solid_fill.colour
/// The colour of the solid fill in GameMaker decimal format.
///
/// @param {Struct} solid_fill.alpha
/// The normalized alpha of the solid fill. 0 to 1
///
/// ----------------------------------------------------------------------------

/// This function draws a rectangle.
///
/// This function is a generification of the built-in functions 'draw_rectangle',
/// 'draw_rectangle_colour', 'draw_roundrect', 'draw_roundrect_colour',
/// 'draw_roundrect_ext' and 'draw_roundrect_colour_ext'.
/// ----------------------------------------------------------------------------
/// @param {Real} x_position
/// The x position of the rectangle's origin point on the render target.
///
/// @param {Real} y_position
/// The y position of the rectangle's origin point on the render target.
///
/// @param {Real} x_alignment
/// The relative x alignment of the rectangle's origin point. [0 - 1]
///
/// @param {Real} y_alignment
/// The relative y alignment of the rectangle's origin point. [0 - 1]
///
/// @param {Real} x_dimension
/// The width of the rectangle.
///
/// @param {Real} y_dimension
/// The height of the rectangle.
///
/// @param {type} blend_colour
/// The colour to blend the rectange with.
///
/// @param {type} blend_alpha
/// The alpha to blend the rectange with.
///
/// @param {type} parameter_name
/// <parameter_description>
///
/// @returns {type}
function gamemaker_rectangle_draw(parameters) {

    /*******************************************************************************
    ―――――――――――――――――――― PARAMETERS ――――――――――――――――――――
    *******************************************************************************/

    var a = arguments

    var parameters = {
        x1 : a[$ "x"] ?? 0,
        y1 : a[$ "y"] ?? 0,
        x2 : a[$ "x2"] ?? 0,
        y2 : a[$ "y2"] ?? 0,

        colour : a[$ "colour"] ?? #FFFFFF,
        alpha : a[$ "alpha"] ?? 1,
        gradient : a[$ "gradient"] ?? {
            top_left : #FFFFFF,
            top_right : #FFFFFF,
            bottom_right : #FFFFFF,
            bottom_left : #FFFFFF,
        },

        outline : false,

        canvas_scale : a[$ "canvas_scale"] ?? 1,
    }

    var p = parameters

    /*******************************************************************************
    ―――――――――――――――――――― RESCALE ――――――――――――――――――――
    *******************************************************************************/

    if (struct_exists(arguments, "canvas_scale")) {
        p.x1 *= a.canvas_scale
        a.width *= a.canvas_scale

        p.y1 *= a.canvas_scale
        a.height *= a.canvas_scale
    }

    /*******************************************************************************
    ―――――――――――――――――――― EFFECTS ――――――――――――――――――――
    *******************************************************************************/

    /* ―――――――――――――――――――― HOVER ―――――――――――――――――――― */
    if (struct_exists(arguments, "yhover")) {
        parameters.y1 += sin(((get_timer() / 1000000) * (2 * pi) * a.yhover.frequency)) * a.yhover.amplitude
    }

    /*******************************************************************************
    ―――――――――――――――――――― CONVENIENCE ――――――――――――――――――――
    *******************************************************************************/

    /* ―――――――――――――――――――― FILL VIEW ―――――――――――――――――――― */
    if (is_struct_instance({ instance : a[$ "fill_view"], constructor : View })) {
        with (a.fill_view) {
            p.x1 = x1()
            p.x2 = x2()
            p.y1 = y1()
            p.y2 = y2()
        }
    }

    /* ―――――――――――――――――――― SCALE ―――――――――――――――――――― */
    if (struct_exists(arguments, "scale")) {
        a.width *= a.scale
        a.height *= a.scale
    }

    /* ―――――――――――――――――――― ALIGNMENT ―――――――――――――――――――― */
    if (struct_exists(arguments, "align")) {
        if (arguments.align == "center") {
            a.halign = fa_center
            a.valign = fa_middle
        }
    }
    if (struct_exists(arguments, "halign")) {
        if (arguments.halign == fa_center) {
            p.x1 -= a.width / 2
        }
    }
    if (struct_exists(arguments, "valign")) {
        if (arguments.valign == fa_middle) {
            p.y1 -= a.height / 2
        }
    }

    /* ―――――――――――――――――――― WIDTH & HEIGHT ―――――――――――――――――――― */
    if (struct_exists(arguments, "width")) { parameters.x2 = p.x1 + (a.width - 1) }
    if (struct_exists(arguments, "height")) { parameters.y2 = p.y1 + (a.height - 1) }


    /* ―――――――――――――――――――― GRADIENT ―――――――――――――――――――― */
    with (p.gradient) {
        if (struct_exists(self, "top")) {
            top_left = top
            top_right = top
        }
        if (struct_exists(self, "bottom")) {
            bottom_right = bottom
            bottom_left = bottom
        }
        if (struct_exists(self, "left")) {
            top_left = left
            bottom_left = left
        }
        if (struct_exists(self, "right")) {
            top_right = right
            bottom_right = right
        }
    }

    /* ―――――――――――――――――――― COLOUR ―――――――――――――――――――― */
    if (struct_exists(arguments, "colour")) {
        with (parameters.gradient) {
            top_left = a.colour
            top_right = a.colour
            bottom_right = a.colour
            bottom_left = a.colour
        }
    }

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

    draw_rectangle_colour(
        parameters.x1,
        parameters.y1,
        parameters.x2,
        parameters.y2,
        parameters.gradient.top_left,
        parameters.gradient.top_right,
        parameters.gradient.bottom_right,
        parameters.gradient.bottom_left,
        parameters.outline
    )

    /*******************************************************************************
    ―――――――――――――――――――― POST-DRAW ――――――――――――――――――――
    *******************************************************************************/

    draw_set_alpha(preserved.alpha)

}

/// <description>
/// NOTE: `draw_rectangle`
/// ----------------------------------------------------------------------------
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// @returns {Struct.GameMakerRectangleElement}
function gamemaker_rectangleelement_create(parameters = {}) {
    return new GameMakerRectangleElement()
}

function GameMakerRectangleElement() constructor {

    private = {
        position : {
            x : 0,
            y : 0,
        },
        dimensions : {
            x : 0,
            y : 0,
        },
        alignment: {
            x : 0,
            y : 0,
        },
        scale : {
            x : 1,
            y : 1,
        },
        rotation : {
            x : 0,
            y : 0,
            z : 0,
        },
        solid_fill : {
            colour : #FFFFFF,
            alpha  : 0,
        },
        gradient_fill : {
            colour : {
                top_left     : #FFFFFF,
                top_right    : #FFFFFF,
                bottom_left  : #FFFFFF,
                bottom_right : #FFFFFF,
            },
            alpha : {
                top_left     : 0,
                top_right    : 0,
                bottom_left  : 0,
                bottom_right : 0,
            },
        },
        solid_outline : {
            thickness : 0,
            alignment: 0,
            colour    : #FFFFFF,
            alpha     : 0,
        },
        alpha : 1,
    }

    /// ----------------------------------------------------------------------------
    /// # position
    /// ----------------------------------------------------------------------------
    self.get_x_position = method(self, Drawable.get_x_position)
    self.get_y_position = method(self, Drawable.get_y_position)
    self.set_position   = method(self, Drawable.set_position)

    /// ----------------------------------------------------------------------------
    /// # alignment
    /// ----------------------------------------------------------------------------
    self.get_x_alignment = method(self, Drawable.get_x_alignment)
    self.get_y_alignment = method(self, Drawable.get_y_alignment)
    self.set_alignment   = method(self, Drawable.set_alignment)

    /// ----------------------------------------------------------------------------
    /// # dimensions
    /// ----------------------------------------------------------------------------
    self.get_x_dimension = method(self, Drawable.get_x_dimension)
    self.get_y_dimension = method(self, Drawable.get_y_dimension)
    self.set_dimensions   = method(self, Drawable.set_dimensions)

    /// ----------------------------------------------------------------------------
    /// # scale
    /// ----------------------------------------------------------------------------
    self.get_x_scale = method(self, Drawable.get_x_scale)
    self.get_y_scale = method(self, Drawable.get_y_scale)
    self.set_scaling   = method(self, Drawable.set_scaling)

    /// ----------------------------------------------------------------------------
    /// # rotation
    /// ----------------------------------------------------------------------------
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
    self.get_blendmode   = method(self, Drawable.get_blendmode)
    self.set_blending        = method(self, Drawable.set_blending)

    #region    ―――――――――――――――――――― COLOUR_SOLID_FILL ――――――――――――――――――――

    /// @returns {Real}
    /// _colour_solid_fill
    static get_colour_solid_fill = function() {
        return private.solid_fill.colour
    }

    ///
    /// @param {Real}
    /// _colour_solid_fill
    /// @returns {Struct.GameMakerRectangleElement}
    static set_colour_solid_fill = function(_colour_solid_fill) {
        if (!is_real(_colour_solid_fill)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        private.solid_fill.colour = clamp(_colour_solid_fill, #000000, #FFFFFF)
        return self
    }

    #endregion ―――――――――――――――――――― COLOUR_SOLID_FILL ――――――――――――――――――――

    #region    ―――――――――――――――――――― ALPHA_SOLID_FILL ――――――――――――――――――――

    /// @returns {Real}
    /// _alpha_solid_fill
    static get_alpha_solid_fill = function() {
        return private.solid_fill.alpha
    }

    ///
    /// @param {Real} _alpha_solid_fill
    /// _alpha_solid_fill
    /// @returns {Struct.GameMakerRectangleElement} self
    static set_alpha_solid_fill = function(_alpha_solid_fill) {
        if (!is_real(_alpha_solid_fill)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        private.solid_fill.alpha = clamp(_alpha_solid_fill, 0, 1)
        return self
    }

    #endregion ―――――――――――――――――――― ALPHA_SOLID_FILL ――――――――――――――――――――

    #region    ―――――――――――――――――――― SOLID_FILL ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    ///
    /// ----------------------------------------------------------------------------
    static get_solid_fill = function() {
        return variable_clone(private.solid_fill)
    }

    /// ----------------------------------------------------------------------------
    ///
    /// ----------------------------------------------------------------------------
    static set_solid_fill = function(arguments = {}) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        if (arguments[$ "colour"] != undefined) { set_colour_solid_fill(arguments.colour) }
        if (arguments[$ "alpha"]  != undefined) { set_alpha_solid_fill(arguments.alpha)   }
        return self
    }

    #endregion ―――――――――――――――――――― SOLID_FILL ――――――――――――――――――――

    #region    ―――――――――――――――――――― COLOUR_GRADIENT_FILL ――――――――――――――――――――

    static get_colour_gradient_fill = function() {

    }

    static set_colour_gradient_fill = function() {

    }

    #endregion ―――――――――――――――――――― COLOUR_GRADIENT_FILL ――――――――――――――――――――

    #region    ―――――――――――――――――――― ALPHA_GRADIENT_FILL ――――――――――――――――――――

    static get_alpha_gradient_fill = function() {

    }

    static set_alpha_gradient_fill = function() {

    }

    #endregion ―――――――――――――――――――― ALPHA_GRADIENT_FILL ――――――――――――――――――――

    #region    ―――――――――――――――――――― GRADIENT_FILL ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    ///
    /// ----------------------------------------------------------------------------
    static get_gradient_fill = function() {
        return variable_clone(private.gradient_fill)
    }

    /// ----------------------------------------------------------------------------
    ///
    /// ----------------------------------------------------------------------------
    static set_gradient_fill = function(arguments = {}) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        if (arguments[$ "all"] != undefined) {

        }
        if (arguments[$ "top"] != undefined) {
            arguments.top_left  = arguments.top
            arguments.top_right = arguments.top
        }
        if (arguments[$ "bottom"] != undefined) {
            arguments.bottom_left  = arguments.bottom
            arguments.bottom_right = arguments.bottom
        }
        if (arguments[$ "left"] != undefined) {
            arguments.top_left    = arguments.left
            arguments.bottom_left = arguments.left
        }
        if (arguments[$ "right"] != undefined) {
            arguments.top_right    = arguments.right
            arguments.bottom_right = arguments.right
        }
        if (arguments[$ "top_left"] != undefined)      {  }
        if (arguments[$ "top_right"]  != undefined)    {  }
        if (arguments[$ "bottom_left"] != undefined)   {  }
        if (arguments[$ "bottom_right"]  != undefined) {  }
        return self
    }

    #endregion ―――――――――――――――――――― GRADIENT_FILL ――――――――――――――――――――

    #region    ―――――――――――――――――――― THICKNESS_SOLID_OUTLINE ――――――――――――――――――――

    static get_thickness_solid_outline = function() {
        return private.solid_outline.thickness
    }

    static set_thickness_solid_outline = function(_thickness) {
        return self
    }

    #endregion ―――――――――――――――――――― THICKNESS_SOLID_OUTLINE ――――――――――――――――――――

    #region    ―――――――――――――――――――― ALIGNMENT_SOLID_OUTLINE ――――――――――――――――――――

    static get_alignment_solid_outline = function() {
        return private.solid_outline.alignment
    }

    static set_alignment_solid_outline = function(_alignment) {
        return self
    }

    #endregion ―――――――――――――――――――― ALIGNMENT_SOLID_OUTLINE ――――――――――――――――――――

    #region    ―――――――――――――――――――― COLOUR_SOLID_OUTLINE ――――――――――――――――――――

    /// @returns {Real}
    /// colour_solid_outline
    /// ----------------------------------------------------------------------------
    static get_colour_solid_outline = function() {
        return private.solid_outline.colour
    }

    /// ----------------------------------------------------------------------------
    ///
    /// @param {Real} _colour_solid_outline
    /// colour_solid_outline
    /// @returns {Struct.GameMakerRectangleElement}
    /// ----------------------------------------------------------------------------
    static set_colour_solid_outline = function(_colour_solid_outline) {
        if (!is_real(_colour_solid_outline)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        private.solid_outline.colour = clamp(_colour_solid_outline, #000000, #FFFFFF)
        return self
    }

    #endregion ―――――――――――――――――――― COLOUR_SOLID_OUTLINE ――――――――――――――――――――

    #region    ―――――――――――――――――――― ALPHA_SOLID_OUTLINE ――――――――――――――――――――

    /// @returns {Real}
    /// alpha_solid_outline
    /// ----------------------------------------------------------------------------
    static get_alpha_solid_outline = function() {
        return private.solid_outline.alpha
    }

    /// ----------------------------------------------------------------------------
    ///
    /// @param {Real} _alpha_solid_outline
    /// alpha_solid_outline
    /// @returns {Struct.GameMakerRectangleElement} self
    /// ----------------------------------------------------------------------------
    static set_alpha_solid_outline = function(_alpha_solid_outline) {
        if (!is_real(_alpha_solid_outline)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        private.solid_outline.alpha = clamp(_alpha_solid_outline, 0, 1)
        return self
    }

    #endregion ―――――――――――――――――――― ALPHA_SOLID_OUTLINE ――――――――――――――――――――

    #region    ―――――――――――――――――――― SOLID_OUTLINE ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    ///
    /// ----------------------------------------------------------------------------
    static get_solid_outline = function() {
        return variable_clone(private.solid_outline)
    }

    /// ----------------------------------------------------------------------------
    ///
    /// ----------------------------------------------------------------------------
    static set_solid_outline = function(arguments = {}) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        if (arguments[$ "thickness"] != undefined) { set_thickness_solid_outline(arguments.colour) }
        if (arguments[$ "alignment"] != undefined) { set_alignment_solid_outline(arguments.alpha)  }
        if (arguments[$ "colour"]    != undefined) { set_colour_solid_outline(arguments.colour)    }
        if (arguments[$ "alpha"]     != undefined) { set_alpha_solid_outline(arguments.alpha)      }
        return self
    }

    #endregion ―――――――――――――――――――― SOLID_OUTLINE ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    ///
    /// ----------------------------------------------------------------------------
    static draw = function() {

        var _x1 = get_x_position() - get_x_alignment() * get_x_dimension() * get_x_scale()
        var _y1 = get_y_position() - get_y_alignment() * get_y_dimension() * get_y_scale()
        var _x2 = _x1 + get_x_dimension() * get_x_scale()
        var _y2 = _y1 + get_y_dimension() * get_y_scale()

        var _colour = get_colour_solid_fill()
        var _alpha  = get_alpha_solid_fill()

        var _vertices = [
            { x : _x1, y : _y1 },
            { x : _x1, y : _y2 },
            { x : _x2, y : _y1 },
            { x : _x1, y : _y2 },
            { x : _x2, y : _y1 },
            { x : _x2, y : _y2 },
        ]

        // BEGIN_DRAW
        draw_primitive_begin(pr_trianglelist);

        for (var i = 0; i < array_length(_vertices); i++) {
            var _new_x, _new_y, _new_z, _rotation

            var _vertex = _vertices[i]

            /* ―――――――――――――――――――― GLOBAL_ORIGIN ―――――――――――――――――――― */
            var _x = _vertex.x
            var _y = _vertex.y
            var _z = 0

            _x -= get_x_position()
            _y -= get_y_position()

            /* ―――――――――――――――――――― X_ROTATION ―――――――――――――――――――― */
            _rotation = - get_x_rotation() * 2 * pi

            if (_rotation != 0) {
                _new_y = _y * cos(_rotation) - _z * sin(_rotation)
                _new_z = _y * sin(_rotation) + _z * cos(_rotation)

                _y = _new_y
                _z = _new_z

            }

            /* ―――――――――――――――――――― Y_ROTATION ―――――――――――――――――――― */
            _rotation = - get_y_rotation() * 2 * pi

            if (_rotation != 0) {
                _new_x =  _x * cos(_rotation) + _z * sin(_rotation)
                _new_z = -_x * cos(_rotation) + _z * cos(_rotation)

                _x = _new_x
                _z = _new_z
            }

            /* ―――――――――――――――――――― Z_ROTATION ―――――――――――――――――――― */
            _rotation = - get_z_rotation() * 2 * pi

            if (_rotation != 0) {
                _new_x = _x * cos(_rotation) - _y * sin(_rotation)
                _new_y = _x * sin(_rotation) + _y * cos(_rotation)

                _x = _new_x
                _y = _new_y
            }

            /* ―――――――――――――――――――― LOCAL_ORIGIN ―――――――――――――――――――― */
            _x += get_x_position()
            _y += get_y_position()

            _vertex.x = _x
            _vertex.y = _y

             draw_vertex_colour(_vertex.x, _vertex.y, _colour, _alpha)
        }

        // END_DRAW
        draw_primitive_end()

        return self
    }

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
