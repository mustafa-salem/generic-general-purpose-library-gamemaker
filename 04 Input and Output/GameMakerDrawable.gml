// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function Drawable() constructor {

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
    static get_x_position = function(parameters = {}) {
        return private.position.x
    }

    /// 
    /// @param {Real} alignment
    /// 0 to 1
    /// @returns {Real}
    static get_y_position = function(parameters = {}) {
        return private.position.y
    }

    /// 
    /// @param {type} x
    /// @param {type} y
    /// @returns {Struct} self
    static set_position = function(parameters = {}) {
        if (arguments[$ "x"] != undefined) { set_x_position(arguments.x) }
        if (arguments[$ "y"] != undefined) { set_y_position(arguments.y) }
        return self
    }

    /* -----------------------------------------------------------------------------------------------------------------
    DIMENSIONS
    ----------------------------------------------------------------------------------------------------------------- */

    /// @returns {Real}
    /// x_dimensions
    static get_x_dimension = function() {
        return private.dimensions.x
    }

    /// @param {Real} _x_dimensions
    /// x_dimensions
    /// @returns {Struct.GameMakerRectangleElement} self
    static set_x_dimensions = function(_x_dimensions) {
        if (!is_real(_x_dimensions)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        private.dimensions.x = _x_dimensions
        return self
    }

    /// @returns {Real}
    /// y_dimensions
    static get_y_dimension = function() {
        return private.dimensions.y
    }

    /// @param {Real} _y_dimensions
    /// y_dimensions
    /// @returns {Struct.GameMakerRectangleElement} self
    static set_y_dimensions = function(_y_dimensions) {
        if (!is_real(_y_dimensions)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        private.dimensions.y = _y_dimensions
        return self
    }

    /// @returns {Struct}
    /// dimensions { x : Real, y : Real }
    static get_dimensions = function() {
        return private.dimensions
    }

    /// @param {Struct} [arguments]
    ///
    /// @param {Real} [arguments.x]
    /// x_dimensions
    ///
    /// @param {Real} [arguments.y]
    /// y_dimensions
    /// @returns {Struct.GameMakerRectangleElement} self
    static set_dimensions = function(arguments = {}) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        if (arguments[$ "x"] != undefined) { set_x_dimensions(arguments.x) }
        if (arguments[$ "y"] != undefined) { set_y_dimensions(arguments.y) }
        return self
    }

    /* -----------------------------------------------------------------------------------------------------------------
    ALIGNMENT
    ----------------------------------------------------------------------------------------------------------------- */

    /// @returns {Real}
    /// x_alignment
    static get_x_alignment = function() {
        return private.alignment.x
    }

    /// @param {Struct} _x_alignment
    /// x_alignment
    /// @returns {Struct.GameMakerRectangleElement}
    static set_x_alignment = function(_x_alignment) {
        if (!is_real(_x_alignment)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        private.alignment.x = clamp(_x_alignment, 0, 1)
        return self
    }

    /// @returns {Real}
    /// y_alignment
    static get_y_alignment = function() {
        return private.alignment.y
    }

    /// @param {Struct} _y_alignment
    /// y_alignment
    /// @returns {Struct.GameMakerRectangleElement}
    static set_y_alignment = function(_y_alignment) {
        if (!is_real(_y_alignment)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        private.alignment.y = clamp(_y_alignment, 0, 1)
        return self
    }

    /// @returns {Struct}
    /// alignment { x : Real, y : Real }
    static get_alignment = function() {
        return private.alignment
    }

    /// @param {Struct} [arguments]
    /// @param {Real} [arguments.x] x_alignment
    /// @param {Real} [arguments.y] y_alignment
    /// @returns {Struct.GameMakerRectangleElement} self
    static set_alignment = function(arguments = {}) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        if (arguments[$ "x"] != undefined) { set_x_alignment(arguments.x) }
        if (arguments[$ "y"] != undefined) { set_y_alignment(arguments.y) }
        return self
    }

    /* -----------------------------------------------------------------------------------------------------------------
    SCALE
    ----------------------------------------------------------------------------------------------------------------- */

    ///
    /// This function is used to get the x component of the scale of the element.
    /// @returns {Real}
    static get_x_scale = function() {
        return private.x_scale
    }

    ///
    /// This function is used to get the y component of the scale of the element.
    /// @returns {Real}
    static get_y_scale = function() {
        return private.y_scale
    }

    /// This function is used to set the scale properties of the element.
    /// ---
    /// @param {Real} x The scaling on the x axis.
    /// @param {Real} y The scaling on the y axis.
    /// @returns {Struct} self
    static set_scaling = function(parameters = {}) {
        if (parameters[$ "x"] != undefined) { private.x_scale = parameters.x }
        if (parameters[$ "y"] != undefined) { private.y_scale = parameters.y }
        return self
    }

    /* -----------------------------------------------------------------------------------------------------------------
    ROTATION
    ----------------------------------------------------------------------------------------------------------------- */

    /// @returns {Real} x_rotation
    static get_x_rotation = function() {
        return private.rotation.x
    }

    /// @returns {Real} y_rotation
    static get_y_rotation = function() {
        return private.rotation.y
    }

    /// @returns {Real} z_rotation
    static get_z_rotation = function() {
        return private.rotation.z
    }

    ///
    /// @param {Struct} [arguments]
    /// @param {Real} [arguments.x] 
    /// @param {Real} [arguments.y] 
    /// @param {Real} [arguments.z] 
    /// @returns {Struct.GameMakerRectangleElement} self
    static set_rotation = function(arguments) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        if (arguments[$ "x"] != undefined) { set_x_rotation(arguments.x) }
        if (arguments[$ "y"] != undefined) { set_y_rotation(arguments.y) }
        if (arguments[$ "z"] != undefined) { set_z_rotation(arguments.z) }
        return self
    }

    /* -----------------------------------------------------------------------------------------------------------------
    BLEND
    ----------------------------------------------------------------------------------------------------------------- */

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    get_blend_colour = function(parameters = {}) {
        return _return
    }

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    get_blend_alpha = function(parameters = {}) {
        return _return
    }

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    get_blendmode = function(parameters = {}) {
        return _return
    }

    /// Sets the blending settings.
    /// ---
    /// `parameters.colour` The blending colour.
    /// `parameters.alpha` The blending alpha.
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @returns {Struct} self
    set_blending = function(parameters) {
        return self;
    }

    /* -----------------------------------------------------------------------------------------------------------------
    SHADER
    ----------------------------------------------------------------------------------------------------------------- */

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    get_shader = function(parameters = {}) {
        return _return
    }

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    get_shader_variables = function(parameters = {}) {
        return _return
    }

    /// 
    /// @param {type} parameter_name
    /// @returns {type}
    set_shader = function(parameters = {}) {
        return _return
    }

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
