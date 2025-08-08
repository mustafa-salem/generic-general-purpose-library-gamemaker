// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function Drawable() constructor {

    #region    ―――――――――――――――――――― POSITION ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Real} alignment
    /// 0 to 1
    /// ----------------------------------------------------------------------------
    /// @returns {Real}
    /// ----------------------------------------------------------------------------
    static get_x_position = function(parameters = {}) {
        return private.position.x
    }

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Real} alignment
    /// 0 to 1
    /// ----------------------------------------------------------------------------
    /// @returns {Real}
    /// ----------------------------------------------------------------------------
    static get_y_position = function(parameters = {}) {
        return private.position.y
    }

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {type} x
    /// <parameter_description>
    ///
    /// @param {type} y
    /// <parameter_description>
    ///
    /// ----------------------------------------------------------------------------
    /// @returns {Struct} self
    /// ----------------------------------------------------------------------------
    static set_position = function(parameters = {}) {
        if (arguments[$ "x"] != undefined) { set_x_position(arguments.x) }
        if (arguments[$ "y"] != undefined) { set_y_position(arguments.y) }
        return self
    }

    #endregion ―――――――――――――――――――― POSITION ――――――――――――――――――――

    #region    ―――――――――――――――――――― DIMENSIONS ――――――――――――――――――――

    /// @returns {Real}
    /// x_dimensions
    /// ----------------------------------------------------------------------------
    static get_x_dimension = function() {
        return private.dimensions.x
    }

    /// @param {Real} _x_dimensions
    /// x_dimensions
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.GameMakerRectangleElement} self
    /// ----------------------------------------------------------------------------
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
    /// ----------------------------------------------------------------------------
    static get_y_dimension = function() {
        return private.dimensions.y
    }

    /// @param {Real} _y_dimensions
    /// y_dimensions
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.GameMakerRectangleElement} self
    /// ----------------------------------------------------------------------------
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
    /// ----------------------------------------------------------------------------
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
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.GameMakerRectangleElement} self
    /// ----------------------------------------------------------------------------
    static set_dimensions = function(arguments = {}) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        if (arguments[$ "x"] != undefined) { set_x_dimensions(arguments.x) }
        if (arguments[$ "y"] != undefined) { set_y_dimensions(arguments.y) }
        return self
    }

    #endregion ―――――――――――――――――――― DIMENSIONS ――――――――――――――――――――

    #region    ―――――――――――――――――――― ALIGNMENT ――――――――――――――――――――

    /// @returns {Real}
    /// x_alignment
    /// ----------------------------------------------------------------------------
    static get_x_alignment = function() {
        return private.alignment.x
    }

    /// @param {Struct} _x_alignment
    /// x_alignment
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.GameMakerRectangleElement}
    /// ----------------------------------------------------------------------------
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
    /// ----------------------------------------------------------------------------
    static get_y_alignment = function() {
        return private.alignment.y
    }

    /// @param {Struct} _y_alignment
    /// y_alignment
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.GameMakerRectangleElement}
    /// ----------------------------------------------------------------------------
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
    /// ----------------------------------------------------------------------------
    static get_alignment = function() {
        return private.alignment
    }

    /// @param {Struct} [arguments]
    ///
    /// @param {Real} [arguments.x]
    /// x_alignment
    ///
    /// @param {Real} [arguments.y]
    /// y_alignment
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.GameMakerRectangleElement} self
    /// ----------------------------------------------------------------------------
    static set_alignment = function(arguments = {}) {
        if (!is_struct(arguments)) {
            // new InvalidTypeErrorGeneric()
            return self
        }
        if (arguments[$ "x"] != undefined) { set_x_alignment(arguments.x) }
        if (arguments[$ "y"] != undefined) { set_y_alignment(arguments.y) }
        return self
    }

    #endregion ―――――――――――――――――――― ALIGNMENT ――――――――――――――――――――

    #region    ―――――――――――――――――――― SCALE ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    ///
    /// This function is used to get the x component of the scale of the element.
    /// ----------------------------------------------------------------------------
    /// @returns {Real}
    /// ----------------------------------------------------------------------------
    static get_x_scale = function() {
        return private.x_scale
    }

    /// ----------------------------------------------------------------------------
    ///
    /// This function is used to get the y component of the scale of the element.
    /// ----------------------------------------------------------------------------
    /// @returns {Real}
    /// ----------------------------------------------------------------------------
    static get_y_scale = function() {
        return private.y_scale
    }

    /// ----------------------------------------------------------------------------
    ///
    /// This function is used to set the scale properties of the element.
    /// ----------------------------------------------------------------------------
    /// @param {Real} x
    /// The scaling on the x axis.
    ///
    /// @param {Real} y
    /// The scaling on the y axis.
    ///
    /// ----------------------------------------------------------------------------
    /// @returns {Struct} self
    /// ----------------------------------------------------------------------------
    static set_scale = function(parameters = {}) {
        if (parameters[$ "x"] != undefined) { private.x_scale = parameters.x }
        if (parameters[$ "y"] != undefined) { private.y_scale = parameters.y }
        return self
    }

    #endregion ―――――――――――――――――――― SCALE ――――――――――――――――――――

	#region    ―――――――――――――――――――― ROTATION ――――――――――――――――――――

	/// @returns {Real}
	/// x_rotation
	/// ----------------------------------------------------------------------------
	static get_x_rotation = function() {
		return private.rotation.x
	}

	/// @returns {Real}
	/// y_rotation
	/// ----------------------------------------------------------------------------
	static get_y_rotation = function() {
		return private.rotation.y
	}

	/// @returns {Real}
	/// z_rotation
	/// ----------------------------------------------------------------------------
	static get_z_rotation = function() {
		return private.rotation.z
	}

	/// ----------------------------------------------------------------------------
	///
	/// @param {Struct} [arguments]
	///
	/// @param {Real} [arguments.x]
	/// x_dimensions
	///
	/// @param {Real} [arguments.y]
	/// y_dimensions
	///
	/// @param {Real} [arguments.z]
	/// z_dimensions
	/// @returns {Struct.GameMakerRectangleElement} self
	/// ----------------------------------------------------------------------------
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

	#endregion ―――――――――――――――――――― ROTATION ――――――――――――――――――――

    #region    ―――――――――――――――――――― BLEND ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {type} parameter_name
    /// <parameter_description>
    ///
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    get_blend_colour = function(parameters = {}) {
        return _return
    }

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {type} parameter_name
    /// <parameter_description>
    ///
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    get_blend_alpha = function(parameters = {}) {
        return _return
    }

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {type} parameter_name
    /// <parameter_description>
    ///
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    get_blendmode = function(parameters = {}) {
        return _return
    }

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {type} parameter_name
    /// <parameter_description>
    ///
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    set_blend = function(parameters = {}) {
        return _return
    }

    #endregion ―――――――――――――――――――― BLEND ――――――――――――――――――――

    #region    ―――――――――――――――――――― SHADER ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {type} parameter_name
    /// <parameter_description>
    ///
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    get_shader = function(parameters = {}) {
        return _return
    }

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {type} parameter_name
    /// <parameter_description>
    ///
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    get_shader_variables = function(parameters = {}) {
        return _return
    }

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {type} parameter_name
    /// <parameter_description>
    ///
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    set_shader = function(parameters = {}) {
        return _return
    }

    #endregion ―――――――――――――――――――― SHADER ――――――――――――――――――――

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
