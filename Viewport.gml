/*******************************************************************************/
#region    ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
/*******************************************************************************/

function ViewPortGeneric(arguments) constructor {

    if (arguments == undefined) { return }

    /*******************************************************************************/
    #region    ―――――――――――――――――――― PRIVATE ――――――――――――――――――――
    /*******************************************************************************/

    private = {
        view_port_index : arguments.view_port_index,
    }

    /*******************************************************************************/
    #endregion ―――――――――――――――――――― PRIVATE ――――――――――――――――――――
    /*******************************************************************************/

    get_index = function() {
        return private.view_port_index
    }

    /*******************************************************************************/
    #region    ―――――――――――――――――――― VISIBLE ――――――――――――――――――――
    /*******************************************************************************/

    /// ----------------------------------------------------------------------------
    /// @function get_visible(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// proxy for gamemaker_viewport_is_visible
    /// ----------------------------------------------------------------------------
    /// @returns {boolean}
    /// ----------------------------------------------------------------------------
    static get_visible = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        return gamemaker_viewport_is_visible(arguments)
    }

    /// ----------------------------------------------------------------------------
    /// @function set_visible(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// proxy for gamemaker_viewport_set_visible
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.ViewPortGeneric} self
    /// ----------------------------------------------------------------------------
    static set_visible = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_visible(arguments)
        if (_is_instance_scope) { return self }
    }

    /*******************************************************************************/
    #endregion ―――――――――――――――――――― VISIBLE ――――――――――――――――――――
    /*******************************************************************************/

    /*******************************************************************************/
    #region    ―――――――――――――――――――― SURFACE ――――――――――――――――――――
    /*******************************************************************************/

    /// ----------------------------------------------------------------------------
    /// @function get_surface(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// proxy for gamemaker_viewport_get_surface
    /// ----------------------------------------------------------------------------
    /// @returns {struct.GameMakerSurface|Undefined}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_surface = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        return gamemaker_viewport_get_surface(arguments)
    }

    /// ----------------------------------------------------------------------------
    /// @function set_surface(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// proxy for gamemaker_viewport_set_surface
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.ViewPortGeneric} self
    /// ----------------------------------------------------------------------------
    static set_surface = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_surface(arguments)
        if (_is_instance_scope) { return self }
    }

    /*******************************************************************************/
    #endregion ―――――――――――――――――――― SURFACE ――――――――――――――――――――
    /*******************************************************************************/

    /*******************************************************************************/
    #region    ―――――――――――――――――――― CAMERA ――――――――――――――――――――
    /*******************************************************************************/

    /// ----------------------------------------------------------------------------
    /// @function get_camera(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// proxy for gamemaker_viewport_get_camera
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.CameraGeneric|Undefined}
    /// ----------------------------------------------------------------------------
    static get_camera = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        return gamemaker_viewport_get_camera(arguments)
    }

    /// ----------------------------------------------------------------------------
    /// @function set_camera(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// proxy for gamemaker_viewport_set_camera
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.ViewPortGeneric} self
    /// ----------------------------------------------------------------------------
    static set_camera = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_camera(arguments)
        if (_is_instance_scope) { return self }
    }

    /*******************************************************************************/
    #endregion ―――――――――――――――――――― CAMERA ――――――――――――――――――――
    /*******************************************************************************/

    /*******************************************************************************/
    #region    ―――――――――――――――――――― POSITION ――――――――――――――――――――
    /*******************************************************************************/

    #region    ―――――――――――――――――――― X_POSITION ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    /// @function get_x_position()
    /// ----------------------------------------------------------------------------
    /// @returns {Real}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_x_position = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        return gamemaker_viewport_get_x_position(arguments)
    }

    /// ----------------------------------------------------------------------------
    /// @function set_x_position(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    ///
    /// @param {Type} arguments.parameter_name
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_x_position = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_x_position(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion ―――――――――――――――――――― X_POSITION ――――――――――――――――――――

    #region    ―――――――――――――――――――― Y_POSITION ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    /// @function get_y_position()
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_y_position = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        return gamemaker_viewport_get_y_position(arguments)
    }

    /// ----------------------------------------------------------------------------
    /// @function set_y_position(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    ///
    /// @param {Type} arguments.parameter_name
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_y_position = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_y_position(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion ―――――――――――――――――――― Y_POSITION ――――――――――――――――――――

    #region    ―――――――――――――――――――― POSITION ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    /// @function get_position()
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_position = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        return gamemaker_viewport_get_position(arguments)
    }

    /// ----------------------------------------------------------------------------
    /// @function set_position(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    ///
    /// @param {Type} arguments.x
    /// <parameter_description>
    ///
    /// @param {Type} arguments.y
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_position = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_position(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion ―――――――――――――――――――― POSITION ――――――――――――――――――――

    /*******************************************************************************/
    #endregion ―――――――――――――――――――― POSITION ――――――――――――――――――――
    /*******************************************************************************/

    /*******************************************************************************/
    #region    ―――――――――――――――――――― DIMENSIONS ――――――――――――――――――――
    /*******************************************************************************/

    #region    ―――――――――――――――――――― X_DIMENSIONS ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    /// @function get_x_dimension(arguments)
    /// ----------------------------------------------------------------------------
    /// @returns {Real}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_x_dimension = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        return gamemaker_viewport_get_x_dimension(arguments)
    }

    /// ----------------------------------------------------------------------------
    /// @function set_x_dimensions(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    ///
    /// @param {Type} arguments.parameter_name
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_x_dimensions = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_x_dimension(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion ―――――――――――――――――――― X_DIMENSIONS ――――――――――――――――――――

    #region    ―――――――――――――――――――― Y_DIMENSIONS ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    /// @function get_y_dimension()
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_y_dimension = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        return gamemaker_viewport_get_y_dimension(arguments)
    }

    /// ----------------------------------------------------------------------------
    /// @function set_y_dimensions(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    ///
    /// @param {Type} arguments.parameter_name
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_y_dimensions = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_y_dimension(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion ―――――――――――――――――――― Y_DIMENSIONS ――――――――――――――――――――

    #region    ―――――――――――――――――――― DIMENSIONS ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    /// @function get_dimensions()
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_dimensions = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        return 
    }

    /// ----------------------------------------------------------------------------
    /// @function set_dimensions(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    ///
    /// @param {Type} arguments.x
    /// <parameter_description>
    ///
    /// @param {Type} arguments.y
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_dimensions = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_dimensions(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion ―――――――――――――――――――― DIMENSIONS ――――――――――――――――――――

    /*******************************************************************************/
    #endregion ―――――――――――――――――――― DIMENSIONS ――――――――――――――――――――
    /*******************************************************************************/

}

/*******************************************************************************/
#endregion ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
/*******************************************************************************/