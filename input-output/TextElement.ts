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

    /**
     * This function is used to set the original font and colour of the textelement.
     * 
     * **NOTE:** Using `[/font]` and `[/colour]` will change the font and colour back to these values.
     */
    public set_formatting({ font, colour }): this {
        /*
        const _font_name = font ?? this.#default_format.font_name;
        const _colour    = colour ?? this.#default_format.colour;
        if (!is_string(_font_name)) {
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
    public set_line_height({}): this {
        // this.#scribble_text_element.line_height(parameters.minimum, parameters.maximum)
        return this;
    }

    /**
     * 
     */
    public set_leading({}): this {
        // this.#scribble_text_element.line_spacing(parameters.leading)
        return this;
    }

    /**
     * 
     */
    public set_skew({}): this {
        // this.#scribble_text_element.skew(parameters.x, parameters.y)
        return this;
    }

    /**
     * 
     */
    public set_alignment({ x, y }: { x: number, y: number }): this {
        // if (parameters["x"] != undefined) { this.#alignment.x = parameters.x }
        // if (parameters["y"] != undefined) { this.#alignment.y = parameters.y }
        // this.#scribble_text_element.align(this.#alignment.x, this.#alignment.y)
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
    public set_position(arguments): this {
        // if (!is_undefined(arguments["x"])) { this.#position.x = arguments.x }
        // if (!is_undefined(arguments["y"])) { this.#position.y = arguments.y }
        return this;
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
        /*
        if (argument_count != 1) {
            throw new IllegalArgumentException("1 argument expected.")
        }
        if (not is_struct(parameters)) {
            throw new IllegalArgumentException("`parameters` must be a struct.")
        }
        if (not (struct_exists(parameters, "textelement") and is_struct(parameters.textelement) and is_instanceof(parameters.textelement, TextElement))) {
            throw new IllegalArgumentException("`parameters.textelement` must be a struct that is an instance of `TextElement`.")
        }
        var _textelement = parameters.textelement
        return _textelement.this.#scribble_text_element.get_page_count()
        */
    }

    /**
     * 
     */
    public get_pageindex(): number {
        // var _element;
        return _element.this.#scribble_text_element.get_page();
    }

    /**
     * 
     */
    public is_onlastpage(): boolean {
        return this.#scribble_text_element.on_last_page()
    }

    /**
     * 
     */
    public goto_page(page: number): this {
        this.#gamemaker_textelement_goto_page.page(parameters.page);
        return this;
    }

}
