// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// Creates a new Text Element instance and returns it.
/// ---
/// `parameters.string` {String} The string to draw.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Struct}
function gamemaker_textelement_create(parameters = {}) {
    /// scribble(string, [uniqueID])
    return new GameMakerTextElement(parameters);
}

/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_textelement_draw(parameters = {}) {
    private.scribble_text_element.draw(parameters.x, parameters.y, parameters.typist)
    return _return
}

/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {Struct.GameMakerTextElement} parameters.textelement
/// The textelement to target.
/// @returns {Real}
function gamemaker_textelement_get_pagecount(parameters = {}) {
    if (argument_count != 1) {
        throw new IllegalArgumentException("1 argument expected.")
    }
    if (not is_struct(parameters)) {
        throw new IllegalArgumentException("`parameters` must be a struct.")
    }
    if (not (struct_exists(parameters, "textelement") and is_struct(parameters.textelement) and is_instanceof(parameters.textelement, GameMakerTextElement))) {
        throw new IllegalArgumentException("`parameters.textelement` must be a struct that is an instance of `GameMakerTextElement`.")
    }
    var _textelement = parameters.textelement
    return _textelement.private.scribble_text_element.get_page_count()
}

/// 
/// ---
/// `parameters.textelement`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {type}
function gamemaker_textelement_get_pageindex(parameters) {
    var _element;
    return _element.private.scribble_text_element.get_page();
}

/// 
/// ---
/// `parameters.textelement`
/// `parameters.page`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_textelement_goto_page(parameters) {
    private.gamemaker_textelement_goto_page.page(parameters.page);
    return undefined;
}

/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_textelement_is_onlastpage(parameters = {}) {
    return private.scribble_text_element.on_last_page()
}

/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_textelement_set_alignment(parameters = {}) {
    if (parameters[$ "x"] != undefined) { private.alignment.x = parameters.x }
    if (parameters[$ "y"] != undefined) { private.alignment.y = parameters.y }
    private.scribble_text_element.align(private.alignment.x, private.alignment.y)
    return _return
}

/// 
/// @param {type} parameter_name
/// @param {type} parameter_name
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_textelement_set_blending(parameters = {}) {
    var _colour    = arguments[$ "colour"]
    private.colour = _alpha
    private.scribble_text_element.blend(_colour, private.alpha)
    return self
    var _alpha    = arguments[$ "alpha"]
    private.alpha = _alpha
    private.scribble_text_element.blend(private.colour, _alpha)
    return _return
}

/// This function is used to set the original font and colour of the textelement.
/// ---
/// **NOTE:** Using `[/font]` and `[/colour]` will change the font and colour back to these values.
/// ---
/// `parameters.textelement`
/// `parameters.font`
/// `parameters.colour`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_textelement_set_formatting(parameters) {
    var _font_name = arguments[$ "font"]   ?? private.default_format.font_name
    var _colour    = arguments[$ "colour"] ?? private.default_format.colour
    if (!is_string(_font_name)) { font_get_name(_font_name) }
    private.default_format.font_name = _font_name
    private.default_format.colour    = _colour
    private.scribble_text_element.starting_format(_font_name, _colour)
    return undefined;
}

/// 
/// @param {type} parameter_name
/// @param {type} x
/// @param {type} y
/// @returns {type}
function gamemaker_textelement_set_position(parameters = {}) {
    return _return
}

/// 
/// @param {type} string
/// @param {type} font
/// @param {type} colour
/// @param {type} alpha
/// @param {type} x_position
/// @param {type} y_position
/// @param {type} x_alignment
/// @param {type} y_alignment
/// @param {type} x_scale
/// @param {type} y_scale
/// @returns {Undefined}
function gamemaker_text_draw(parameters = {}) {
    return undefined
}

/// 
/// @param {string} string
/// @param {Type} font
/// @param {Type} colour
/// @param {Real} x_position
/// @param {Real} y_position

/// @param {Real} x_alignment
/// @param {Real} y_alignment
/// @param {Real} x_dimension
/// @param {Real} y_dimension
/// @param {Real} x_scale
/// @param {Real} y_scale
/// @param {Real} rotation
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

/// @returns {type}
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

/// 
/// @param {string} string
/// @param {type} font
/// @param {type} colour
/// @param {type} x_alignment
/// @param {type} y_alignment
/// @param {type} blend_colour
/// @param {type} blend_alpha
/// @param {Real} x_position
/// @param {Real} y_position
/// @param {Real} x_scale
/// @param {Real} y_scale
/// @param {Real} rotation
/// @param {Real} rotation_degrees
/// @param {type} maximum_line_width
/// @param {type} distance_between_lines
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
    ―――――――――――――――――――― ALIGNMENT ――――――――――――――――――――
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


// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function GameMakerTextElement() constructor {

    #region    ―――――――――――――――――――― SUBREGION_NAME ――――――――――――――――――――
    
    static private = {
        id : 0,
    }

    static id_counter = 0

    self.private = {
        id : 0,
        font
        colour
        x_alignment
        y_alignment
        blend_colour
    }

    private.id = id_counter
    id_counter++

    // SCRIBBLE_ELEMENT
    private.scribble_text_element.scribble(private.string, private.id)

    static create = function(arguments = {}) {
        return new GameMakerTextElement(arguments)
    }

    static get_scribble_text_element = function(arguments = {}) {
        return private.scribble_text_element
    }

    static set_scaling = function(parameters = {}) {
        if (parameters[$ "x"] != undefined) { private.scale.x = parameters.x }
        if (parameters[$ "y"] != undefined) { private.scale.y = parameters.y }
        private.scribble_text_element.transform(private.scale.x, private.scale.y, private.rotation * 360)
        return self
    }

    self.set_scaling = method(self, set_scaling)

    static set_solid_blend = function(arguments = {}) {
        return self
    }

    static set_gradient_blend = function(arguments = {}) {
        return self
    }

    static add_drop_shadow = function(arguments = {}) {
        var _colour, xoffset, yoffset
        return self
    }

    set_line_height = function(parameters = {}) {
        private.scribble_text_element.line_height(parameters.minimum, parameters.maximum)
        return self
    }

    set_leading = function(parameters = {}) {
        private.scribble_text_element.line_spacing(parameters.leading)
        return self
    }

    set_skew = function(parameters = {}) {
        private.scribble_text_element.skew(parameters.x, parameters.y)
        return self
    }

    #endregion ―――――――――――――――――――― SUBREGION_NAME ――――――――――――――――――――

    static prototype = {
        set_formatting: function(arguments = {}) {
            parameters.textelement = self;
            gamemaker_textelement_set_formatting(parameters);
            return self;
        },
        set_alignment: function(parameters = {}) {
            parameters.textelement = self;
            gamemaker_textelement_set_alignment(parameters);
            return self;
        }
    };

    self.set_formatting = method(self, prototype.set_formatting);
    self.set_alignment  = method(self, prototype.set_alignment);

    static set_blending = function(parameters = {}) {
        parameters.textelement = self
        gamemaker_textelement_set_blending(parameters)
        return self
    }

    static set_position = function(arguments) {
        if (!is_undefined(arguments[$ "x"])) { private.position.x = arguments.x }
        if (!is_undefined(arguments[$ "y"])) { private.position.y = arguments.y }
        return self
    }

    static draw = function(parameters = {}) {
        parameters.textelement = self
        gamemaker_textelement_draw(parameters)
        return self
    }
    
    static get_pagecount = function(parameters = {}) {
        parameters.textelement = self
        return gamemaker_textelement_get_pagecount(parameters)
    }

    static get_pageindex = function(parameters = {}) {
        parameters.textelement = self
        return gamemaker_textelement_get_pageindex(parameters)
    }

    static is_onlastpage = function(parameters = {}) {
        parameters.textelement = self
        return gamemaker_textelement_is_onlastpage(parameters)
    }

    static goto_page = function(parameters = {}) {
        parameters.textelement = self
        return gamemaker_textelement_get_pageindex(parameters)
    }

    self.set_blending   = method(self, set_blending)
    self.set_position   = method(self, set_position)
    self.draw           = method(self, draw)

    self.get_pagecount = method(self, get_pagecount)
    self.get_pageindex = method(self, get_pageindex)
    self.is_onlastpage = method(self, is_onlastpage)
    self.goto_page     = method(self, goto_page)

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――