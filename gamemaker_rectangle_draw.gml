/// ----------------------------------------------------------------------------
/// @function GameMakerRectangleElement(arguments)
/// ----------------------------------------------------------------------------
/// @description
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

/// ----------------------------------------------------------------------------
/// @description
/// This function draws a rectangle.
///
/// This function is a generification of the built-in functions 'draw_rectangle',
/// 'draw_rectangle_colour', 'draw_roundrect', 'draw_roundrect_colour',
/// 'draw_roundrect_ext' and 'draw_roundrect_colour_ext'.
/// ----------------------------------------------------------------------------
/// @param {number} x_position
/// The x position of the rectangle's origin point on the render target.
///
/// @param {number} y_position
/// The y position of the rectangle's origin point on the render target.
///
/// @param {number} x_alignment
/// The relative x alignment of the rectangle's origin point. [0 - 1]
///
/// @param {number} y_alignment
/// The relative y alignment of the rectangle's origin point. [0 - 1]
///
/// @param {number} x_dimension
/// The width of the rectangle.
///
/// @param {number} y_dimension
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
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_rectangle_draw(parameters) {

    /*******************************************************************************
    –––––––––––––––––––– PARAMETERS ––––––––––––––––––––
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
	–––––––––––––––––––– RESCALE ––––––––––––––––––––
	*******************************************************************************/

	if (struct_exists(arguments, "canvas_scale")) {
		p.x1 *= a.canvas_scale
		a.width *= a.canvas_scale

		p.y1 *= a.canvas_scale
		a.height *= a.canvas_scale
	}

    /*******************************************************************************
    –––––––––––––––––––– EFFECTS ––––––––––––––––––––
    *******************************************************************************/

    /* –––––––––––––––––––– HOVER –––––––––––––––––––– */
    if (struct_exists(arguments, "yhover")) {
        parameters.y1 += sin(((get_timer() / 1000000) * (2 * pi) * a.yhover.frequency)) * a.yhover.amplitude
    }

    /*******************************************************************************
    –––––––––––––––––––– CONVENIENCE ––––––––––––––––––––
    *******************************************************************************/

    /* –––––––––––––––––––– FILL VIEW –––––––––––––––––––– */
    if (is_struct_instance({ instance : a[$ "fill_view"], constructor : View })) {
        with (a.fill_view) {
            p.x1 = x1()
            p.x2 = x2()
            p.y1 = y1()
            p.y2 = y2()
        }
    }

	/* –––––––––––––––––––– SCALE –––––––––––––––––––– */
	if (struct_exists(arguments, "scale")) {
		a.width *= a.scale
		a.height *= a.scale
	}

	/* –––––––––––––––––––– ALIGNMENT –––––––––––––––––––– */
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

    /* –––––––––––––––––––– WIDTH & HEIGHT –––––––––––––––––––– */
    if (struct_exists(arguments, "width")) { parameters.x2 = p.x1 + (a.width - 1) }
    if (struct_exists(arguments, "height")) { parameters.y2 = p.y1 + (a.height - 1) }


    /* –––––––––––––––––––– GRADIENT –––––––––––––––––––– */
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

    /* –––––––––––––––––––– COLOUR –––––––––––––––––––– */
    if (struct_exists(arguments, "colour")) {
        with (parameters.gradient) {
            top_left = a.colour
            top_right = a.colour
            bottom_right = a.colour
            bottom_left = a.colour
        }
    }

    /*******************************************************************************
    –––––––––––––––––––– PRE-DRAW ––––––––––––––––––––
    *******************************************************************************/

	var preserved = {
		alpha : draw_get_alpha(),
	}

	draw_set_alpha(p.alpha)

    /*******************************************************************************
    –––––––––––––––––––– DRAWING ––––––––––––––––––––
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
    –––––––––––––––––––– POST-DRAW ––––––––––––––––––––
    *******************************************************************************/

	draw_set_alpha(preserved.alpha)

}