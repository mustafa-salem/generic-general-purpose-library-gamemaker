import { Colour } from "@gamemaker/input-output/Colour";

/**
 * A drawable TextElement
 */
export class TextElement {

    /**
     * Creates a new Text Element instance and returns it.
     */
    public static create(): TextElement {
        /// scribble(string, [uniqueID])
        return new TextElement();
    }

    #scribble_text_element = null;

    /**
     * This function is used to set the original font and colour of the textelement.
     * 
     * **NOTE:** Using `[/font]` and `[/colour]` will change the font and colour back to these values.
     */
    public set_formatting({ font, colour }: { font: any, colour: Colour }): this {
        /*
        const _font_name = font ?? this.#default_format.font_name;
        const _colour    = colour ?? this.#default_format.colour;
        if (typeof _font_name != "string") {
            font_get_name(_font_name);
        }
        this.#default_format.font_name = _font_name;
        this.#default_format.colour    = _colour;
        this.#scribble_text_element.starting_format(_font_name, _colour);
        */
        return this;
    }

    /**
     * 
     */
    public get_scribble_text_element({}): object {
        /// return this.#scribble_text_element;
    }

    /**
     * 
     */
    public set_scaling({}): this {
        // if (parameters["x"] != undefined) { this.#scale.x = parameters.x }
        // if (parameters["y"] != undefined) { this.#scale.y = parameters.y }
        // this.#scribble_text_element.transform(this.#scale.x, this.#scale.y, this.#rotation * 360);
        return this;
    }

    /**
     * 
     */
    public set_solid_blend({}): this {
        return this;
    }

    /**
     * 
     */
    public set_gradient_blend({}): this {
        return this;
    }

    /**
     * 
     */
    public add_drop_shadow({}): this {
        var _colour, xoffset, yoffset
        return this
    }

    /**
     * 
     */
    public set_line_height({ minimum, maximum }): this {
        this.#scribble_text_element.line_height(minimum, maximum);
        return this;
    }

    /**
     * 
     */
    public set_leading({ leading }): this {
        this.#scribble_text_element.line_spacing(leading)
        return this;
    }

    /**
     * 
     */
    public set_skew({ x, y }): this {
        this.#scribble_text_element.skew(x, y)
        return this;
    }

    /**
     * 
     */
    public set_alignment({ x, y }: { x: number, y: number }): this {
        this.#scribble_text_element.align(x, y)
        return this;
    }

    /**
     * 
     */
    public set_blending({}): this {
        var _colour    = arguments["colour"]
        this.#colour = _alpha
        this.#scribble_text_element.blend(_colour, this.#alpha)
        return this;
        var _alpha    = arguments["alpha"]
        this.#alpha = _alpha
        this.#scribble_text_element.blend(this.#colour, _alpha)
        return this;
    }

    /**
     * 
     */
    public set position(position: Vector2) {
        // if (!is_undefined(arguments["x"])) { this.#position.x = arguments.x }
        // if (!is_undefined(arguments["y"])) { this.#position.y = arguments.y }
    }

    /**
     * draws the instance
     */
    public draw({}): this {
        this.#scribble_text_element.draw(parameters.x, parameters.y, parameters.typist)
        return this;
    }
    
    /**
     * 
     */
    public get_pagecount(): number {

        return this.#scribble_text_element.get_page_count();

    }

    /**
     * 
     */
    public get_pageindex(): number {
        
        return this.#scribble_text_element.get_page();

    }

    /**
     * 
     */
    public is_onlastpage(): boolean {
        
        return this.#scribble_text_element.on_last_page();

    }

    /**
     * 
     */
    public goto_page(page: number): this {
        
        this.#scribble_text_element.page(page);

        return this;
    
    }

}


/*

draw
get_pagecount
get_pageindex
goto_page
is_onlastpage
set_alignment
set_blending
set_position

private = {
    id : 0,
}

id_counter = 0

this.private = {
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

*/

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

    var _string     = parameters[""] ??

    var _font       = parameters[""] ??
    var _colour     = parameters[""] ??

    var _x_position = parameters[""] ??
    var _y_position = parameters[""] ??

    var x_alignment = parameters[""] ??
    var y_alignment = parameters[""] ??

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
        string: "STRING_MISSING",
        leading : -1, // typographical leading; -1 -> automatic default
        line_width : -1, // width before linebreak; -1 -> no inserted line breaks
        xscale : 1,
        yscale : 1,
        angle : 0,
        colour_top_left : Colour.White,
        colour_top_right : Colour.White,
        colour_bottom_right : Colour.White,
        colour_bottom_left : Colour.White,
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
            parameters.xscale = MathEX.clamp(parameters.compress / string_width(parameters.string), 0, 1)
        }
    }

    // string_hash_to_newline()

    var return_data = {
        dimensions : {},
    }
    return_data.width = string_width(parameters.string) * parameters.xscale
    if (parameters.line_width > 0) { return_data.width = Math.max(return_data.width, parameters.line_width) }

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