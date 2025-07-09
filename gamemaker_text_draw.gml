/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} string
/// <parameter_description>
/// @param {type} font
/// <parameter_description>
/// @param {type} colour
/// <parameter_description>
/// @param {type} alpha
/// <parameter_description>
/// @param {type} x_position
/// <parameter_description>
/// @param {type} y_position
/// <parameter_description>
/// @param {type} x_alignment
/// <parameter_description>
/// @param {type} y_alignment
/// <parameter_description>
/// @param {type} x_scale
/// <parameter_description>
/// @param {type} y_scale
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_text_draw(parameters = {}) {
    return undefined
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {string} string
/// @param {Type} font
/// @param {Type} colour
/// @param {number} x_position
/// @param {number} y_position

/// @param {number} x_alignment
/// @param {number} y_alignment
/// @param {number} x_dimension
/// @param {number} y_dimension
/// @param {number} x_scale
/// @param {number} y_scale
/// @param {number} rotation
/// @param {Type} blend_colour
/// @param {Type} blend_alpha
/// @param {Type} gradient_blend_colour_0
/// @param {Type} gradient_blend_colour_1
/// @param {Type} gradient_blend_colour_2
/// @param {Type} gradient_blend_colour_3
/// @param {Type} gradient_blend_alpha
/// @param {Type} target
/// @param {Type} blendmode
/// @param {Type} shader

/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_text_draw(parameters) {

    var _string     = parameters[$ ""] ??

    var _font       = parameters[$ ""] ??
    var _colour     = parameters[$ ""] ??

    var _x_position = parameters[$ ""] ??
    var _y_position = parameters[$ ""] ??

    var x_alignment = parameters[$ ""] ??
    var y_alignment = parameters[$ ""] ??

    scribble(_string, "gamemaker_text_draw")
    .starting_format(_font, _colour)
    .align(x_alignment, y_alignment)
    .draw(_x_position, _y_position)

    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {string} string
/// @param {type} font
/// @param {type} colour
/// @param {type} x_alignment
/// @param {type} y_alignment
/// @param {type} blend_colour
/// @param {type} blend_alpha
/// @param {number} x_position
/// @param {number} y_position
/// @param {number} x_scale
/// @param {number} y_scale
/// @param {number} rotation
/// @param {number} rotation_degrees
/// @param {type} maximum_line_width
/// @param {type} distance_between_lines
/// ----------------------------------------------------------------------------
function gamemaker_text_draw(arguments) {

    scribble(parameters.string)

    scribble.starting_format(parameters.font, parameters.colour)

    scribble.align(parameters.x_alignment, parameters.y_alignment)

    scribble.blend(parameters.blend_colour, parameters.blend_alpha)

    scribble.gradient(colour, blendFactor)

    scribble.transform(parameters.x_scale, parameters.y_scale, parameters.rotation * 360)

    scribble.draw(parameters.x_position, parameters.y_position)

    var parameters = {
        x : 0,
        y : 0,
        string : "STRING_MISSING",
        leading : -1, // typographical leading; -1 -> automatic default
        line_width : -1, // width before linebreak; -1 -> no inserted line breaks
        xscale : 1,
        yscale : 1,
        angle : 0,
        colour_top_left : #FFFFFF,
        colour_top_right : #FFFFFF,
        colour_bottom_right : #FFFFFF,
        colour_bottom_left : #FFFFFF,
        alpha : 1,
        halign : fa_left,
        valign : fa_top,
    }

    var _halign = draw_get_halign()
    var _valign = draw_get_valign()

    struct_transfer(arguments, parameters)

    /*******************************************************************************
    –––––––––––––––––––– ALIGNMENT ––––––––––––––––––––
    *******************************************************************************/

    if (struct_exists(arguments, "align")) {
        if (arguments.align == "center") {
            parameters.halign = fa_center
            parameters.valign = fa_middle
        }
    }

    draw_set_halign(parameters.halign)
    draw_set_valign(parameters.valign)

    // SOLID COLOUR
    if (variable_instance_exists(parameters, "colour")) {
        parameters.colour_top_left = parameters.colour
        parameters.colour_top_right = parameters.colour
        parameters.colour_bottom_right = parameters.colour
        parameters.colour_bottom_left = parameters.colour
    }

    if (variable_instance_exists(parameters, "compress")) {
        if (parameters.compress > 0) {
            parameters.xscale = clamp(parameters.compress / string_width(parameters.string), 0, 1)
        }
    }

    // string_hash_to_newline()

    var return_data = {
        dimensions : {},
    }
    return_data.width = string_width(parameters.string) * parameters.xscale
    if (parameters.line_width > 0) { return_data.width = max(return_data.width, parameters.line_width) }

    draw_text_ext_transformed_colour(
        parameters.x,
        parameters.y,
        parameters.string,
        parameters.leading,
        parameters.line_width,
        parameters.xscale,
        parameters.yscale,
        parameters.angle,
        parameters.colour_top_left,
        parameters.colour_top_right,
        parameters.colour_bottom_right,
        parameters.colour_bottom_left,
        parameters.alpha
    )

    draw_set_halign(_halign)
    draw_set_valign(_valign)

    return return_data
}
