// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

class Drawable {

    /// parameters.sprite
    /// parameters.frame
    static set_image(parameters) {

    }

    /* -----------------------------------------------------------------------------------------------------------------
    POSITION
    ----------------------------------------------------------------------------------------------------------------- */

    /// 
    /// @param {Real} alignment
    /// 0 to 1
    /// @returns {Real}
    public get position() {

    }
    
    public set position(position: Vector2) {
        
    }

    /* -----------------------------------------------------------------------------------------------------------------
    DIMENSIONS
    ----------------------------------------------------------------------------------------------------------------- */

    /// @returns {Real}
    /// x_dimensions
    static get_x_dimension() {
        return private.dimensions.x
    }

    /// @param {Real} _x_dimensions
    /// x_dimensions
    /// @returns {Struct.RectangleElement} this
    static set_x_dimensions(_x_dimensions: number) {
        private.dimensions.x = _x_dimensions
        return this
    }

    /// @returns {Real}
    /// y_dimensions
    static get_y_dimension() {
        return private.dimensions.y
    }

    /// @param {Real} _y_dimensions
    /// y_dimensions
    /// @returns {Struct.RectangleElement} this
    static set_y_dimensions(_y_dimensions: number) {
        private.dimensions.y = _y_dimensions
        return this
    }

    /// @returns {Struct}
    /// dimensions { x : Real, y : Real }
    static get_dimensions() {
        return private.dimensions
    }

    /// @param {Struct} [arguments]
    ///
    /// @param {Real} [arguments.x]
    /// x_dimensions
    ///
    /// @param {Real} [arguments.y]
    /// y_dimensions
    /// @returns {Struct.RectangleElement} this
    static set_dimensions(arguments = {}) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return this
        }
        if (arguments["x"] != undefined) { set_x_dimensions(arguments.x) }
        if (arguments["y"] != undefined) { set_y_dimensions(arguments.y) }
        return this
    }

    /* -----------------------------------------------------------------------------------------------------------------
    ALIGNMENT
    ----------------------------------------------------------------------------------------------------------------- */

    /// @returns {Real}
    /// x_alignment
    static get_x_alignment() {
        return private.alignment.x
    }

    /// @param {Struct} _x_alignment
    /// x_alignment
    /// @returns {Struct.RectangleElement}
    static set_x_alignment(_x_alignment: number) {
        private.alignment.x = Interpolation.clamp(_x_alignment, 0, 1)
        return this
    }

    /// @returns {Real}
    /// y_alignment
    static get_y_alignment() {
        return private.alignment.y
    }

    /// @param {Struct} _y_alignment
    /// y_alignment
    /// @returns {Struct.RectangleElement}
    static set_y_alignment(_y_alignment: number) {
        private.alignment.y = Interpolation.clamp(_y_alignment, 0, 1)
        return this
    }

    /// @returns {Struct}
    /// alignment { x : Real, y : Real }
    static get_alignment() {
        return private.alignment
    }

    /// @param {Struct} [arguments]
    /// @param {Real} [arguments.x] x_alignment
    /// @param {Real} [arguments.y] y_alignment
    /// @returns {Struct.RectangleElement} this
    static set_alignment(arguments = {}) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return this
        }
        if (arguments["x"] != undefined) { set_x_alignment(arguments.x) }
        if (arguments["y"] != undefined) { set_y_alignment(arguments.y) }
        return this
    }

    /* -----------------------------------------------------------------------------------------------------------------
    SCALE
    ----------------------------------------------------------------------------------------------------------------- */

    ///
    /// This function is used to get the x component of the scale of the element.
    /// @returns {Real}
    static get_x_scale() {
        return private.x_scale
    }

    ///
    /// This function is used to get the y component of the scale of the element.
    /// @returns {Real}
    static get_y_scale() {
        return private.y_scale
    }

    /// This function is used to set the scale properties of the element.
    /// ---
    /// @param {Real} x The scaling on the x axis.
    /// @param {Real} y The scaling on the y axis.
    /// @returns {Struct} this
    static set_scaling(parameters = {}) {
        if (parameters["x"] != undefined) { private.x_scale = parameters.x }
        if (parameters["y"] != undefined) { private.y_scale = parameters.y }
        return this
    }

    /* -----------------------------------------------------------------------------------------------------------------
    ROTATION
    ----------------------------------------------------------------------------------------------------------------- */

    /// @returns {Real} x_rotation
    static get_x_rotation() {
        return private.rotation.x
    }

    /// @returns {Real} y_rotation
    static get_y_rotation() {
        return private.rotation.y
    }

    /// @returns {Real} z_rotation
    static get_z_rotation() {
        return private.rotation.z
    }

    ///
    /// @param {Struct} [arguments]
    /// @param {Real} [arguments.x] 
    /// @param {Real} [arguments.y] 
    /// @param {Real} [arguments.z] 
    /// @returns {Struct.RectangleElement} this
    static set_rotation(arguments) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return this
        }
        if (arguments["x"] != undefined) { set_x_rotation(arguments.x) }
        if (arguments["y"] != undefined) { set_y_rotation(arguments.y) }
        if (arguments["z"] != undefined) { set_z_rotation(arguments.z) }
        return this
    }

    /* -----------------------------------------------------------------------------------------------------------------
    BLEND
    ----------------------------------------------------------------------------------------------------------------- */

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    get_blend_colour(parameters = {}) {
        return _return
    }

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    get_blend_alpha(parameters = {}) {
        return _return
    }

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    get_blendmode(parameters = {}) {
        return _return
    }

    /// Sets the blending settings.
    /// ---
    /// `parameters.colour` The blending colour.
    /// `parameters.alpha` The blending alpha.
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @returns {Struct} this
    set_blending(parameters) {
        return this;
    }

    /* -----------------------------------------------------------------------------------------------------------------
    SHADER
    ----------------------------------------------------------------------------------------------------------------- */

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    get_shader(parameters = {}) {
        return _return
    }

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    get_shader_variables(parameters = {}) {
        return _return
    }

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    set_shader(parameters = {}) {
        return _return
    }

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
