/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @returns {Struct.Camera|Undefined}
/// The camera assigned to the view port with the provided index.
/// If no camera is assigned, undefined will be returned.
function gamemaker_viewport_get_camera(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    var _camera_id = view_get_camera(_view_port_index)
    if (_camera_id = -1) {
        return;
    }
    return gamemaker_camera_create({ camera_id : _camera_id })
}

function gamemaker_viewport_get_index(parameters = {}) {
    var _view_port_index = parameters.view_port
    if (is_struct(parameters.view_port)) {
        _view_port_index = parameters.view_port.get_index()
    }
    return _view_port_index
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @returns {Struct}
function gamemaker_viewport_get_position(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    return {
        x : view_get_xport(_view_port_index),
        y : view_get_yport(_view_port_index),
    }
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @returns {type}
function gamemaker_viewport_get_surface(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    return view_get_surface_id(_view_port_index)
}

/// wrapper for view_get_wport
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @returns {Real}
/// The x dimensions of the view port with the provided index on its render target.
function gamemaker_viewport_get_x_dimension(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    return view_get_wport(_view_port_index)
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @returns {Real}
/// The x position of the given view port
function gamemaker_viewport_get_x_position(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    return view_get_xport(_view_port_index)
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @returns {Real}
function gamemaker_viewport_get_y_dimension(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    return view_get_hport(_view_port_index)
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @returns {type}
function gamemaker_viewport_get_y_position(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    return view_get_yport(_view_port_index)
}

/// wrapper function for view_get_visible
/// @param {Struct} parameters
///
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @returns {Bool}
///  Whether the view port with the provided index is visible.
function gamemaker_viewport_is_visible(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    return view_get_visible(_view_port_index)
}

/// Assigns the provided camera to the view port with the provided index.
/// If undefined or -1 is provided as a reference to the camera then the current
/// camera will be removed from the view port without a new camera replacing it.
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @param {Struct.Camera|Real|Undefined} parameters.camera
/// The camera to use or it
function gamemaker_viewport_set_camera(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    var _camera_id = gamemaker_camera_get_id({ camera : parameters.camera })
    view_set_camera(_view_port_index, _camera_id)
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @param {Real} parameters.x
/// @param {Real} parameters.y
function gamemaker_viewport_set_dimensions(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    if (parameters["x"] != undefined) {
        view_set_wport(_view_port_index, parameters.x)
    }
    if (parameters["y"] != undefined) {
        view_set_hport(_view_port_index, parameters.y)
    }
}

/// 
/// @param {type} viewport
/// @param {type} x
/// @param {type} y
/// @returns {Undefined}
function gamemaker_viewport_set_dimensions(parameters = {}) {
    if () {
        view_set_wport(view_port, w)
    }
    if () {
        view_set_hport(view_port, h)
    }
    return undefined
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @param {Type} parameters.parameter_name
/// @param {Type} parameters.parameter_name
function gamemaker_viewport_set_position(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    if (parameters["x"] != undefined) {
        view_set_xport(_view_port_index, parameters.x)
    }
    if (parameters["y"] != undefined) {
        view_set_yport(_view_port_index, parameters.y)
    }
}

/// `view_surface_id` `view_set_surface_id`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {Struct.Viewport|Real} parameters.viewport
/// The view port to target or its index (0 - 7).
/// @param {Type} parameters.surface_id
/// <parameter_description>
/// @returns {Undefined}
function gamemaker_viewport_set_surface(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    view_set_surface_id(_view_port_index, parameters.surface_id)
    return undefined
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @param {Type} parameters.visible
/// Whether the view port should be visible.
function gamemaker_viewport_set_visible(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    view_set_visible(_view_port_index, parameters.visible)
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @param {Type} parameters.x_dimensions
/// The x dimensions of the view port on its render target.
function gamemaker_viewport_set_x_dimension(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    view_set_wport(_view_port_index, parameters.x_dimensions)
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @param {Type} parameters.parameter_name
/// <parameter_description>
function gamemaker_viewport_set_x_position(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    view_set_xport(_view_port_index, parameters.x_position)
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @param {Type} parameters.parameter_name
/// <parameter_description>
function gamemaker_viewport_set_y_dimension(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    view_set_hport(_view_port_index, parameters.y_dimensions)
}

/// 
/// @param {Struct} parameters
/// @param {Struct.Viewport|Real} parameters.view_port
/// The view port to target or its index (0 - 7).
/// @param {Type} parameters.parameter_name
/// <parameter_description>
function gamemaker_viewport_set_y_position(parameters = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : parameters.view_port })
    view_set_yport(_view_port_index, parameters.y_position)
}

/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// @returns {type}
function gamemaker_viewport(parameters = {}) {
    return _return
}
/**
 * 
 */
export class Viewport {

/*     if (parameters == undefined) {
        return;
    }

    private = {
        view_port_index : parameters.view_port_index,
    } */

    get_index = function() {
        return private.view_port_index
    }

    ///
    /// proxy for gamemaker_viewport_is_visible
    /// @returns {Bool}
    static get_visible = function(parameters = {}) {
        return gamemaker_viewport_is_visible(parameters)
    }

    ///
    /// proxy for gamemaker_viewport_set_visible
    /// @returns {Struct.Viewport} this
    static set_visible = function(parameters = {}) {
        gamemaker_viewport_set_visible(parameters)
    }

    ///
    /// proxy for gamemaker_viewport_get_surface
    /// @returns {Struct.GameMakerSurface|Undefined}
    static get_surface = function(parameters = {}) {
        return gamemaker_viewport_get_surface(parameters)
    }

    ///
    /// proxy for gamemaker_viewport_set_surface
    /// @returns {Struct.Viewport} this
    static set_surface = function(parameters = {}) {
        gamemaker_viewport_set_surface(parameters)
        if (_is_instance_scope) { return this }
    }

    #camera: object | null = null;

    public get camera(): object | null {
        return this.#camera;
    }

    ///
    /// proxy for gamemaker_viewport_set_camera
    /// @returns {Struct.Viewport} this
    static set_camera = function(parameters = {}) {
        gamemaker_viewport_set_camera(parameters)
        if (_is_instance_scope) { return this }
    }

    public get position() {
        return gamemaker_viewport_get_x_position(parameters)
        return gamemaker_viewport_get_y_position(parameters)
        return gamemaker_viewport_get_position(parameters)
    }

    public set position(position: Vector2) {
        gamemaker_viewport_set_x_position(parameters)
        gamemaker_viewport_set_y_position(parameters)
    }

    public set position(position: Vector2) {
        gamemaker_viewport_set_position(parameters)
    }

    /// @returns {Real}
    static get_x_dimension = function(parameters = {}) {
        if (_is_instance_scope) { parameters.view_port = this }
    }

    /// <function_description>
    /// @param {Struct} parameters
    /// @param {Type} parameters.parameter_name
    /// @returns {type}
    static set_x_dimensions = function(parameters = {}) {
        gamemaker_viewport_set_x_dimension(parameters)
    }

    /// @returns {type}
    static get_y_dimension = function(parameters = {}) {
        return gamemaker_viewport_get_y_dimension(parameters)
    }

    /// <function_description>
    /// @param {Struct} parameters
    /// @param {Type} parameters.parameter_name
    /// @returns {type}
    static set_y_dimensions = function(parameters = {}) {
        gamemaker_viewport_set_y_dimension(parameters)
    }

    /// @returns {type}
    static get_dimensions = function(parameters = {}) {
        return 
    }

    /// <function_description>
    /// @param {Struct} parameters
    /// @param {Type} parameters.x
    /// <parameter_description>
    /// @param {Type} parameters.y
    /// @returns {type}
    static set_dimensions = function(parameters = {}) {
        gamemaker_viewport_set_dimensions(parameters)
    }

}