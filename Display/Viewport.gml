/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} viewport
/// <parameter_description>
/// @parameter {type} x
/// <parameter_description>
/// @parameter {type} y
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_dimensions(parameters = {}) {
    if () {
        view_set_wport(view_port, w)
    }
    if () {
        view_set_hport(view_port, h)
    }
    return undefined
}

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/












/*******************************************************************************/
/* ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#region    –––––––––––––––––––– CONSTRUCTOR ––––––––––––––––––––
/* ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/*******************************************************************************/

function ViewPortGeneric(arguments) constructor {

    if (arguments == undefined) { return }

    /*******************************************************************************/
    #region    –––––––––––––––––––– PRIVATE ––––––––––––––––––––
    /*******************************************************************************/

    private = {
        view_port_index : arguments.view_port_index,
    }

    /*******************************************************************************/
    #endregion –––––––––––––––––––– PRIVATE ––––––––––––––––––––
    /*******************************************************************************/

    get_index = function() {
        return private.view_port_index
    }

    /*******************************************************************************/
    #region    –––––––––––––––––––– VISIBLE ––––––––––––––––––––
    /*******************************************************************************/

    /// ----------------------------------------------------------------------------
    /// @function get_visible(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// proxy for gamemaker_viewport_is_visible
    /// ----------------------------------------------------------------------------
    /// @return {Bool}
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
    /// @return {Struct.ViewPortGeneric} self
    /// ----------------------------------------------------------------------------
    static set_visible = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_visible(arguments)
        if (_is_instance_scope) { return self }
    }

    /*******************************************************************************/
    #endregion –––––––––––––––––––– VISIBLE ––––––––––––––––––––
    /*******************************************************************************/

    /*******************************************************************************/
    #region    –––––––––––––––––––– SURFACE ––––––––––––––––––––
    /*******************************************************************************/

    /// ----------------------------------------------------------------------------
    /// @function get_surface(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// proxy for gamemaker_viewport_get_surface
    /// ----------------------------------------------------------------------------
    /// @return {Struct.Surface|Undefined}
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
    /// @return {Struct.ViewPortGeneric} self
    /// ----------------------------------------------------------------------------
    static set_surface = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_surface(arguments)
        if (_is_instance_scope) { return self }
    }

    /*******************************************************************************/
    #endregion –––––––––––––––––––– SURFACE ––––––––––––––––––––
    /*******************************************************************************/

    /*******************************************************************************/
    #region    –––––––––––––––––––– CAMERA ––––––––––––––––––––
    /*******************************************************************************/

    /// ----------------------------------------------------------------------------
    /// @function get_camera(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// proxy for gamemaker_viewport_get_camera
    /// ----------------------------------------------------------------------------
    /// @return {Struct.CameraGeneric|Undefined}
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
    /// @return {Struct.ViewPortGeneric} self
    /// ----------------------------------------------------------------------------
    static set_camera = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_camera(arguments)
        if (_is_instance_scope) { return self }
    }

    /*******************************************************************************/
    #endregion –––––––––––––––––––– CAMERA ––––––––––––––––––––
    /*******************************************************************************/

    /*******************************************************************************/
    #region    –––––––––––––––––––– POSITION ––––––––––––––––––––
    /*******************************************************************************/

    #region    –––––––––––––––––––– X_POSITION ––––––––––––––––––––

    /// ----------------------------------------------------------------------------
    /// @function get_x_position()
    /// ----------------------------------------------------------------------------
    /// @return {Real}
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
    /// @parameter {Struct} arguments
    ///
    /// @parameter {Type} arguments.parameter_name
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @return {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_x_position = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_x_position(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion –––––––––––––––––––– X_POSITION ––––––––––––––––––––

    #region    –––––––––––––––––––– Y_POSITION ––––––––––––––––––––

    /// ----------------------------------------------------------------------------
    /// @function get_y_position()
    /// ----------------------------------------------------------------------------
    /// @return {type}
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
    /// @parameter {Struct} arguments
    ///
    /// @parameter {Type} arguments.parameter_name
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @return {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_y_position = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_y_position(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion –––––––––––––––––––– Y_POSITION ––––––––––––––––––––

    #region    –––––––––––––––––––– POSITION ––––––––––––––––––––

    /// ----------------------------------------------------------------------------
    /// @function get_position()
    /// ----------------------------------------------------------------------------
    /// @return {type}
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
    /// @parameter {Struct} arguments
    ///
    /// @parameter {Type} arguments.x
    /// <parameter_description>
    ///
    /// @parameter {Type} arguments.y
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @return {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_position = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_position(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion –––––––––––––––––––– POSITION ––––––––––––––––––––

    /*******************************************************************************/
    #endregion –––––––––––––––––––– POSITION ––––––––––––––––––––
    /*******************************************************************************/

    /*******************************************************************************/
    #region    –––––––––––––––––––– DIMENSIONS ––––––––––––––––––––
    /*******************************************************************************/

    #region    –––––––––––––––––––– X_DIMENSIONS ––––––––––––––––––––

    /// ----------------------------------------------------------------------------
    /// @function get_x_dimension(arguments)
    /// ----------------------------------------------------------------------------
    /// @return {Real}
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
    /// @parameter {Struct} arguments
    ///
    /// @parameter {Type} arguments.parameter_name
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @return {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_x_dimensions = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_x_dimension(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion –––––––––––––––––––– X_DIMENSIONS ––––––––––––––––––––

    #region    –––––––––––––––––––– Y_DIMENSIONS ––––––––––––––––––––

    /// ----------------------------------------------------------------------------
    /// @function get_y_dimension()
    /// ----------------------------------------------------------------------------
    /// @return {type}
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
    /// @parameter {Struct} arguments
    ///
    /// @parameter {Type} arguments.parameter_name
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @return {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_y_dimensions = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_y_dimension(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion –––––––––––––––––––– Y_DIMENSIONS ––––––––––––––––––––

    #region    –––––––––––––––––––– DIMENSIONS ––––––––––––––––––––

    /// ----------------------------------------------------------------------------
    /// @function get_dimensions()
    /// ----------------------------------------------------------------------------
    /// @return {type}
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
    /// @parameter {Struct} arguments
    ///
    /// @parameter {Type} arguments.x
    /// <parameter_description>
    ///
    /// @parameter {Type} arguments.y
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @return {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static set_dimensions = function(arguments = {}) {
        var _is_instance_scope = is_instanceof(self, ViewPortGeneric)
        if (_is_instance_scope) { arguments.view_port = self }
        gamemaker_viewport_set_dimensions(arguments)
        if (_is_instance_scope) { return self }
    }

    #endregion –––––––––––––––––––– DIMENSIONS ––––––––––––––––––––

    /*******************************************************************************/
    #endregion –––––––––––––––––––– DIMENSIONS ––––––––––––––––––––
    /*******************************************************************************/

}

/*******************************************************************************/
/* ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#endregion –––––––––––––––––––– CONSTRUCTOR ––––––––––––––––––––
/* ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/*******************************************************************************/

/*******************************************************************************/
/* ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#region    –––––––––––––––––––– SCRIPT_FUNCTIONS ––––––––––––––––––––
/* ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/*******************************************************************************/

function gamemaker_viewport_get_index(arguments = {}) {
    var _view_port_index = arguments.view_port
    if (is_struct(arguments.view_port)) {
        _view_port_index = arguments.view_port.get_index()
    }
    return _view_port_index
}

/*******************************************************************************/
#region    –––––––––––––––––––– VISIBLE ––––––––––––––––––––
/*******************************************************************************/

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_is_visible(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// wrapper function for view_get_visible
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @return {Bool}
///  Whether the view port with the provided index is visible.
/// ----------------------------------------------------------------------------
function gamemaker_viewport_is_visible(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return view_get_visible(_view_port_index)
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_visible(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Type} arguments.visible
/// Whether the view port should be visible.
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_visible(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    view_set_visible(_view_port_index, arguments.visible)
}

/*******************************************************************************/
#endregion –––––––––––––––––––– VISIBLE ––––––––––––––––––––
/*******************************************************************************/

/*******************************************************************************/
#region    –––––––––––––––––––– SURFACE ––––––––––––––––––––
/*******************************************************************************/

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_surface(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @return {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_surface(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return view_get_surface_id(_view_port_index)
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_surface(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Type} arguments.surface_id
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_surface(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    view_set_surface_id(_view_port_index, arguments.surface_id)
}

/*******************************************************************************/
#endregion –––––––––––––––––––– SURFACE ––––––––––––––––––––
/*******************************************************************************/

/*******************************************************************************/
#region    –––––––––––––––––––– CAMERA ––––––––––––––––––––
/*******************************************************************************/

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_camera(arguments)
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @return {Struct.CameraGeneric|Undefined}
/// The camera assigned to the view port with the provided index.
/// If no camera is assigned, undefined will be returned.
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_camera(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    var _camera_id = view_get_camera(_view_port_index)
    if (_camera_id = -1) { return undefined }
    return gamemaker_camera_create({ camera_id : _camera_id })
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_camera(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// Assigns the provided camera to the view port with the provided index.
/// If undefined or -1 is provided as a reference to the camera then the current
/// camera will be removed from the view port without a new camera replacing it.
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Struct.CameraGeneric|Real|Undefined} arguments.camera
/// The camera to use or it
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_camera(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    var _camera_id = gamemaker_camera_get_id({ camera : arguments.camera })
    view_set_camera(_view_port_index, _camera_id)
}

/*******************************************************************************/
#endregion –––––––––––––––––––– CAMERA ––––––––––––––––––––
/*******************************************************************************/

/*******************************************************************************/
#region    –––––––––––––––––––– POSITION ––––––––––––––––––––
/*******************************************************************************/

#region    –––––––––––––––––––– X_POSITION ––––––––––––––––––––

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_x_position(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @return {Real}
/// The x position of the given view port
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_x_position(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return view_get_xport(_view_port_index)
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_x_position(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Type} arguments.parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_x_position(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    view_set_xport(_view_port_index, arguments.x_position)
}

#endregion –––––––––––––––––––– X_POSITION ––––––––––––––––––––

#region    –––––––––––––––––––– Y_POSITION ––––––––––––––––––––

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_y_position(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @return {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_y_position(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return view_get_yport(_view_port_index)
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_y_position(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Type} arguments.parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_y_position(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    view_set_yport(_view_port_index, arguments.y_position)
}

#endregion –––––––––––––––––––– Y_POSITION ––––––––––––––––––––

#region    –––––––––––––––––––– POSITION ––––––––––––––––––––

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_position(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @return {Struct}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_position(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return {
        x : view_get_xport(_view_port_index),
        y : view_get_yport(_view_port_index),
    }
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_position(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Type} arguments.parameter_name
/// <parameter_description>
///
/// @parameter {Type} arguments.parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_position(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    if (arguments[$ "x"] != undefined) {
        view_set_xport(_view_port_index, arguments.x)
    }
    if (arguments[$ "y"] != undefined) {
        view_set_yport(_view_port_index, arguments.y)
    }
}

#endregion –––––––––––––––––––– POSITION ––––––––––––––––––––

/*******************************************************************************/
#endregion –––––––––––––––––––– POSITION ––––––––––––––––––––
/*******************************************************************************/

/*******************************************************************************/
#region    –––––––––––––––––––– DIMENSIONS ––––––––––––––––––––
/*******************************************************************************/

#region    –––––––––––––––––––– X_DIMENSIONS ––––––––––––––––––––

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_x_dimension(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// wrapper for view_get_wport
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @return {Real}
/// The x dimensions of the view port with the provided index on its render target.
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_x_dimension(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return view_get_wport(_view_port_index)
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_x_dimension(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Type} arguments.x_dimensions
/// The x dimensions of the view port on its render target.
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_x_dimension(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    view_set_wport(_view_port_index, arguments.x_dimensions)
}

#endregion –––––––––––––––––––– X_DIMENSIONS ––––––––––––––––––––

#region    –––––––––––––––––––– Y_DIMENSIONS ––––––––––––––––––––

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_y_dimension(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @return {Real}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_y_dimension(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    return view_get_hport(_view_port_index)
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_y_dimension(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Type} arguments.parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_y_dimension(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    view_set_hport(_view_port_index, arguments.y_dimensions)
}

#endregion –––––––––––––––––––– Y_DIMENSIONS ––––––––––––––––––––

#region    –––––––––––––––––––– DIMENSIONS ––––––––––––––––––––


/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_dimensions(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @parameter {Real} arguments.x
/// <parameter_description>
///
/// @parameter {Real} arguments.y
/// <parameter_description>
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_dimensions(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    if (arguments[$ "x"] != undefined) {
        view_set_wport(_view_port_index, arguments.x)
    }
    if (arguments[$ "y"] != undefined) {
        view_set_hport(_view_port_index, arguments.y)
    }
}

#endregion –––––––––––––––––––– DIMENSIONS ––––––––––––––––––––

/*******************************************************************************/
#endregion –––––––––––––––––––– DIMENSIONS ––––––––––––––––––––
/*******************************************************************************/

/*******************************************************************************/
/* ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#endregion –––––––––––––––––––– SCRIPT_FUNCTIONS ––––––––––––––––––––
/* ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/*******************************************************************************/
