import { Vector2 } from "@gamemaker/data-types/Vector2";

export class RectangleElement {

    public static create(): RectangleElement {
        return new RectangleElement();
    }

    public get position() {
        return new Vector2({ x: 0, y: 0 });
    }

    public set position(position: Vector2) {

    }

    public set dimensions(position: Vector2) {

    }

    /*
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
            colour : Colour.White,
            alpha  : 0,
        },
        gradient_fill : {
            colour : {
                top_left     : Colour.White,
                top_right    : Colour.White,
                bottom_left  : Colour.White,
                bottom_right : Colour.White,
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
            colour    : Colour.White,
            alpha     : 0,
        },
        alpha : 1,
    }
    */

/* 
    this.get_x_alignment
    this.get_y_alignment
    this.set_alignment

    this.get_x_dimension
    this.get_y_dimension
    this.set_dimensions

    this.get_x_scale
    this.get_y_scale
    this.set_scaling

    this.get_x_rotation
    this.get_y_rotation
    this.get_z_rotation
    this.set_rotation

    private.blend_colour = 0
    private.blend_alpha  = 0
    private.blendmode   = 0

    this.get_blend_colour
    this.get_blend_alpha
    this.get_blendmode
    this.set_blending */

    //     ―――――――――――――――――――― COLOUR_SOLID_FILL ――――――――――――――――――――

    /// @returns {Real}
    /// _colour_solid_fill
    static get_colour_solid_fill = function() {
        return private.solid_fill.colour
    }

    ///
    /// @param {Real}
    /// _colour_solid_fill
    /// @returns {Struct.RectangleElement}
    static set_colour_solid_fill = function(_colour_solid_fill) {
        if (!is_real(_colour_solid_fill)) {
            // new InvalidTypeErrorGeneric()
            return this
        }
        private.solid_fill.colour = clamp(_colour_solid_fill, Colour.Black, Colour.White)
        return this
    }

    //  ―――――――――――――――――――― COLOUR_SOLID_FILL ――――――――――――――――――――

    //     ―――――――――――――――――――― ALPHA_SOLID_FILL ――――――――――――――――――――

    /// @returns {Real}
    /// _alpha_solid_fill
    static get_alpha_solid_fill = function() {
        return private.solid_fill.alpha
    }

    ///
    /// @param {Real} _alpha_solid_fill
    /// _alpha_solid_fill
    /// @returns {Struct.RectangleElement} this
    static set_alpha_solid_fill = function(_alpha_solid_fill) {
        if (!is_real(_alpha_solid_fill)) {
            // new InvalidTypeErrorGeneric()
            return this
        }
        private.solid_fill.alpha = clamp(_alpha_solid_fill, 0, 1)
        return this
    }

    //  ―――――――――――――――――――― ALPHA_SOLID_FILL ――――――――――――――――――――

    //     ―――――――――――――――――――― SOLID_FILL ――――――――――――――――――――

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
            return this
        }
        if (arguments["colour"] != undefined) { set_colour_solid_fill(arguments.colour) }
        if (arguments["alpha"]  != undefined) { set_alpha_solid_fill(arguments.alpha)   }
        return this
    }

    //  ―――――――――――――――――――― SOLID_FILL ――――――――――――――――――――

    //     ―――――――――――――――――――― COLOUR_GRADIENT_FILL ――――――――――――――――――――

    static get_colour_gradient_fill = function() {

    }

    static set_colour_gradient_fill = function() {

    }

    //  ―――――――――――――――――――― COLOUR_GRADIENT_FILL ――――――――――――――――――――

    //     ―――――――――――――――――――― ALPHA_GRADIENT_FILL ――――――――――――――――――――

    static get_alpha_gradient_fill = function() {

    }

    static set_alpha_gradient_fill = function() {

    }

    //  ―――――――――――――――――――― ALPHA_GRADIENT_FILL ――――――――――――――――――――

    //     ―――――――――――――――――――― GRADIENT_FILL ――――――――――――――――――――

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
            return this
        }
        if (arguments["all"] != undefined) {

        }
        if (arguments["top"] != undefined) {
            arguments.top_left  = arguments.top
            arguments.top_right = arguments.top
        }
        if (arguments["bottom"] != undefined) {
            arguments.bottom_left  = arguments.bottom
            arguments.bottom_right = arguments.bottom
        }
        if (arguments["left"] != undefined) {
            arguments.top_left    = arguments.left
            arguments.bottom_left = arguments.left
        }
        if (arguments["right"] != undefined) {
            arguments.top_right    = arguments.right
            arguments.bottom_right = arguments.right
        }
        if (arguments["top_left"] != undefined)      {  }
        if (arguments["top_right"]  != undefined)    {  }
        if (arguments["bottom_left"] != undefined)   {  }
        if (arguments["bottom_right"]  != undefined) {  }
        return this
    }

    //  ―――――――――――――――――――― GRADIENT_FILL ――――――――――――――――――――

    //     ―――――――――――――――――――― THICKNESS_SOLID_OUTLINE ――――――――――――――――――――

    static get_thickness_solid_outline = function() {
        return private.solid_outline.thickness
    }

    static set_thickness_solid_outline = function(_thickness) {
        return this
    }

    //  ―――――――――――――――――――― THICKNESS_SOLID_OUTLINE ――――――――――――――――――――

    //     ―――――――――――――――――――― ALIGNMENT_SOLID_OUTLINE ――――――――――――――――――――

    static get_alignment_solid_outline = function() {
        return private.solid_outline.alignment
    }

    static set_alignment_solid_outline = function(_alignment) {
        return this
    }

    //  ―――――――――――――――――――― ALIGNMENT_SOLID_OUTLINE ――――――――――――――――――――

    //     ―――――――――――――――――――― COLOUR_SOLID_OUTLINE ――――――――――――――――――――

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
    /// @returns {Struct.RectangleElement}
    /// ----------------------------------------------------------------------------
    static set_colour_solid_outline = function(_colour_solid_outline) {
        if (!is_real(_colour_solid_outline)) {
            // new InvalidTypeErrorGeneric()
            return this
        }
        private.solid_outline.colour = clamp(_colour_solid_outline, Colour.Black, Colour.White)
        return this
    }

    //  ―――――――――――――――――――― COLOUR_SOLID_OUTLINE ――――――――――――――――――――

    //     ―――――――――――――――――――― ALPHA_SOLID_OUTLINE ――――――――――――――――――――

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
    /// @returns {Struct.RectangleElement} this
    /// ----------------------------------------------------------------------------
    static set_alpha_solid_outline = function(_alpha_solid_outline) {
        if (!is_real(_alpha_solid_outline)) {
            // new InvalidTypeErrorGeneric()
            return this
        }
        private.solid_outline.alpha = clamp(_alpha_solid_outline, 0, 1)
        return this
    }

    //  ―――――――――――――――――――― ALPHA_SOLID_OUTLINE ――――――――――――――――――――

    //     ―――――――――――――――――――― SOLID_OUTLINE ――――――――――――――――――――

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
            return this
        }
        if (arguments["thickness"] != undefined) { set_thickness_solid_outline(arguments.colour) }
        if (arguments["alignment"] != undefined) { set_alignment_solid_outline(arguments.alpha)  }
        if (arguments["colour"]    != undefined) { set_colour_solid_outline(arguments.colour)    }
        if (arguments["alpha"]     != undefined) { set_alpha_solid_outline(arguments.alpha)      }
        return this
    }

    //  ―――――――――――――――――――― SOLID_OUTLINE ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    ///
    /// ----------------------------------------------------------------------------
    public draw(): void {

        var _x1 = this.position.x - get_x_alignment() * get_x_dimension() * get_x_scale()
        var _y1 = this.position.y - get_y_alignment() * get_y_dimension() * get_y_scale()
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

        for (let i = 0; i < _vertices.length; i++) {
            var _new_x, _new_y, _new_z, _rotation

            var _vertex = _vertices[i]

            /* ―――――――――――――――――――― GLOBAL_ORIGIN ―――――――――――――――――――― */
            var _x = _vertex.x
            var _y = _vertex.y
            var _z = 0

            _x -= this.position.x
            _y -= this.position.y

            /* ―――――――――――――――――――― X_ROTATION ―――――――――――――――――――― */
            _rotation = - get_x_rotation() * 2 * Math.PI

            if (_rotation != 0) {
                _new_y = _y * Math.cos(_rotation) - _z * Math.sin(_rotation)
                _new_z = _y * Math.sin(_rotation) + _z * Math.cos(_rotation)

                _y = _new_y
                _z = _new_z

            }

            /* ―――――――――――――――――――― Y_ROTATION ―――――――――――――――――――― */
            _rotation = - get_y_rotation() * 2 * Math.PI

            if (_rotation != 0) {
                _new_x =  _x * Math.cos(_rotation) + _z * Math.sin(_rotation)
                _new_z = -_x * Math.cos(_rotation) + _z * Math.cos(_rotation)

                _x = _new_x
                _z = _new_z
            }

            /* ―――――――――――――――――――― Z_ROTATION ―――――――――――――――――――― */
            _rotation = - get_z_rotation() * 2 * Math.PI

            if (_rotation != 0) {
                _new_x = _x * Math.cos(_rotation) - _y * Math.sin(_rotation)
                _new_y = _x * Math.sin(_rotation) + _y * Math.cos(_rotation)

                _x = _new_x
                _y = _new_y
            }

            /* ―――――――――――――――――――― LOCAL_ORIGIN ―――――――――――――――――――― */
            _x += this.position.x
            _y += this.position.y

            _vertex.x = _x
            _vertex.y = _y

             draw_vertex_colour(_vertex.x, _vertex.y, _colour, _alpha)
        }

        // END_DRAW
        draw_primitive_end()

        return this
    }

}

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
        x1 : a["x"] ?? 0,
        y1 : a["y"] ?? 0,
        x2 : a["x2"] ?? 0,
        y2 : a["y2"] ?? 0,

        colour : a["colour"] ?? Colour.White,
        alpha : a["alpha"] ?? 1,
        gradient : a["gradient"] ?? {
            top_left : Colour.White,
            top_right : Colour.White,
            bottom_right : Colour.White,
            bottom_left : Colour.White,
        },

        outline : false,

        canvas_scale : a["canvas_scale"] ?? 1,
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
        parameters.y1 += Math.sin(((get_timer() / 1000000) * (2 * Math.PI) * a.yhover.frequency)) * a.yhover.amplitude
    }

    /*******************************************************************************
    ―――――――――――――――――――― CONVENIENCE ――――――――――――――――――――
    *******************************************************************************/

    /* ―――――――――――――――――――― FILL VIEW ―――――――――――――――――――― */
    if (is_struct_instance({ instance : a["fill_view"], constructor : View })) {
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
        if (struct_exists(this, "top")) {
            top_left = top
            top_right = top
        }
        if (struct_exists(this, "bottom")) {
            bottom_right = bottom
            bottom_left = bottom
        }
        if (struct_exists(this, "left")) {
            top_left = left
            bottom_left = left
        }
        if (struct_exists(this, "right")) {
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