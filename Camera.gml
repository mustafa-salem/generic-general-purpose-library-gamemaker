/*******************************************************************************/
#region    ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
/*******************************************************************************/

/*

* camera_get_default
* camera_set_default
* camera_get_active

* camera_get_view_mat
* camera_set_view_mat
* camera_get_proj_mat
* camera_set_proj_mat

*/

#region    ―――――――――――――――――――― INITIALIZE_CONSTRUCTOR ――――――――――――――――――――

#macro Camera CameraGeneric
#macro CAMERA CAMERA_GENERIC

#macro CAMERA_GENERIC __CameraGeneric()

function __CameraGeneric() {
    static instance = new CameraGeneric()
    return static_get(CameraGeneric)
}

__CameraGeneric()
struct_remove(static_get(__CameraGeneric), "instance")

#endregion ―――――――――――――――――――― INITIALIZE_CONSTRUCTOR ――――――――――――――――――――

#macro CAMERAS __CAMERAS()

function __CAMERAS() {
    return [
        CAMERA_0,
        CAMERA_1,
        CAMERA_2,
        CAMERA_3,
        CAMERA_4,
        CAMERA_5,
        CAMERA_6,
        CAMERA_7
    ]
}

#macro CAMERA_0
#macro CAMERA_1 
#macro CAMERA_2 
#macro CAMERA_3 
#macro CAMERA_4 
#macro CAMERA_5 
#macro CAMERA_6 
#macro CAMERA_7 

#region    ―――――――――――――――――――― INITIALIZE_CONSTRUCTOR ――――――――――――――――――――

#macro View ViewGeneric
#macro VIEW VIEW_GENERIC

#macro VIEW_GENERIC __ViewGeneric()

function __ViewGeneric() {
    static instance = new ViewGeneric()
    return static_get(ViewGeneric)
}

__ViewGeneric()
struct_remove(static_get(__ViewGeneric), "instance")

#endregion ―――――――――――――――――――― INITIALIZE_CONSTRUCTOR ――――――――――――――――――――

#macro VIEWS __VIEWS()

function __VIEWS() {
    return [
        undefined,
        VIEW_1,
        VIEW_2,
        VIEW_3,
        VIEW_4,
        VIEW_5,
        VIEW_6,
        VIEW_7
    ]
}

#macro VIEW_1 CAMERA_1.get_view()
#macro VIEW_2 CAMERA_2.get_view()
#macro VIEW_3 CAMERA_3.get_view()
#macro VIEW_4 CAMERA_4.get_view()
#macro VIEW_5 CAMERA_5.get_view()
#macro VIEW_6 CAMERA_6.get_view()
#macro VIEW_7 CAMERA_7.get_view()

/*******************************************************************************/
#endregion ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
/*******************************************************************************/

/*******************************************************************************/
#region    ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
/*******************************************************************************/

function ViewGeneric(arguments) constructor {

    if (arguments == undefined) { return }

    private = {
        camera_id : gamemaker_camera_get_id({ camera : arguments.camera })
    }

    /// ----------------------------------------------------------------------------
    /// @function create(arguments)
    /// ----------------------------------------------------------------------------
    static create = function(arguments = {}) {
        return new ViewGeneric(arguments)
    }

    #region    ―――――――――――――――――――― POSITION ――――――――――――――――――――

    static get_x_position = function(arguments = {}) {
        if (is_instanceof(self, ViewGeneric)) { arguments.camera = private.camera_id }
        var _camera_id = CAMERA.get_id({ camera : arguments.camera })
        return camera_get_view_x(_camera_id)
    }

    /// ----------------------------------------------------------------------------
    /// @function get_y_position(arguments)
    /// ----------------------------------------------------------------------------
    static get_y_position = function(arguments = {}) {
        if (is_instanceof(self, ViewGeneric)) { arguments.camera = private.camera_id }
        var _camera_id = CAMERA.get_id({ camera : arguments.camera })
        return camera_get_view_y(_camera_id)
    }

    static get_position = function(arguments = {}) {
        if (is_instanceof(self, ViewGeneric)) { arguments.camera = private.camera_id }
        var _camera_id = CAMERA.get_id({ camera : arguments.camera })
        return {
            x : camera_get_view_x(_camera_id),
            y : camera_get_view_y(_camera_id),
        }
    }

    /// ----------------------------------------------------------------------------
    /// @function set_position(arguments)
    /// ----------------------------------------------------------------------------
    static set_position = function(arguments = {}) {
        if (is_instanceof(self, ViewGeneric)) { arguments.camera = private.camera_id }
        var _camera_id = CAMERA.get_id({ camera : arguments.camera })
        var _x = arguments[$ "x"] ?? camera_get_view_x(_camera_id)
        var _y = arguments[$ "y"] ?? camera_get_view_y(_camera_id)
        camera_set_view_pos(_camera_id, _x, _y)
        return self
    }

    #endregion ―――――――――――――――――――― POSITION ――――――――――――――――――――

    #region    ―――――――――――――――――――― DIMENSIONS ――――――――――――――――――――

    /// ----------------------------------------------------------------------------
    /// @function get_x_dimension(arguments)
    /// ----------------------------------------------------------------------------
    static get_x_dimension = function(arguments = {}) {
        if (is_instanceof(self, ViewGeneric)) { arguments.camera = private.camera_id }
        var _camera_id = CAMERA.get_id({ camera : arguments.camera })
        return camera_get_view_width(_camera_id)
    }

    /// ----------------------------------------------------------------------------
    /// @function get_y_dimension(arguments)
    /// ----------------------------------------------------------------------------
    static get_y_dimension = function(arguments = {}) {
        if (is_instanceof(self, ViewGeneric)) { arguments.camera = private.camera_id }
        var _camera_id = CAMERA.get_id({ camera : arguments.camera })
        return camera_get_view_height(_camera_id)
    }

    /// ----------------------------------------------------------------------------
    /// @function get_dimensions(arguments)
    /// ----------------------------------------------------------------------------
    static get_dimensions = function(arguments = {}) {
        if (is_instanceof(self, ViewGeneric)) { arguments.camera = private.camera_id }
        var _camera_id = CAMERA.get_id({ camera : arguments.camera })
        return {
            x : camera_get_view_width(_camera_id),
            y : camera_get_view_height(_camera_id),
        }
    }

    /// ----------------------------------------------------------------------------
    /// @function set_dimensions(arguments)
    /// ----------------------------------------------------------------------------
    static set_dimensions = function(arguments = {}) {
        if (is_instanceof(self, ViewGeneric)) { arguments.camera = private.camera_id }
        var _camera_id = CAMERA.get_id({ camera : arguments.camera })
        var _x = arguments[$ "x"] ?? camera_get_view_width(_camera_id)
        var _y = arguments[$ "y"] ?? camera_get_view_height(_camera_id)
        camera_set_view_size(_camera_id, _x, _y)
        return self
    }

    #endregion ―――――――――――――――――――― DIMENSIONS ――――――――――――――――――――

}

function View(arguments = { }) constructor {
    private = {
        camera_index : arguments[$ "camera_index"] ?? 0,
    }
    camera = function(arguments = {}) { return view_camera[private.camera_index] }
    x1 = function(arguments = {}) { return camera_get_view_x(camera()) }
    x2 = function(arguments = {}) { return x1() + width() }
    y1 = function(arguments = {}) { return camera_get_view_y(camera()) }
    y2 = function(arguments = {}) { return y1() + height() }
    width = function(arguments = {}) { return camera_get_view_width(camera()) }
    height = function(arguments = {}) { return camera_get_view_height(camera()) }
    xcenter = function(arguments = {}) { return x1() + (width() / 2) }
    ycenter = function(arguments = {}) { return y1() + (height() / 2) }
	viewport_width = function(arguments = {}) { return view_wport[private.camera_index] }
    viewport_height = function(arguments = {}) { return view_hport[private.camera_index] }
    xscale = function(arguments = {}) { return viewport_width() / width() }
    yscale = function(arguments = {}) { return viewport_height() / height() }

}

function CameraGeneric(arguments) constructor {

    if (arguments == undefined) { return }

    var _camera_id = arguments.camera_id

    private = {
        camera_id : _camera_id,
        view      : undefined,
    }

    var _self = self
    private.view = VIEW_GENERIC.create({ camera : _self })

    /// ----------------------------------------------------------------------------
    /// @function (arguments)
    /// ----------------------------------------------------------------------------
    static get_id = function(arguments = {}) {
        if (is_instanceof(self, CameraGeneric)) { return private.camera_id }
        // CAMERA_ID
        if (is_real(arguments.camera)) {
            return arguments.camera
        }
        // CAMERA_STRUCT
        if (is_struct(arguments.camera)) {
            return arguments.camera.get_id()
        }
        // UNDEFINED
        return -1
    }

    /// ----------------------------------------------------------------------------
    /// @function create(arguments)
    /// ----------------------------------------------------------------------------
    static create = function(arguments = {}) {
        return new CameraGeneric({ camera_id : arguments[$ "camera_id"] ?? camera_create() })
        // camera_create
        // camera_create_view(room_x, room_y, width, height, [angle, object, x_speed, y_speed, x_border, y_border])
    }

/// ----------------------------------------------------------------------------
/// @description
    /// proxy : destroy_camera_generic
    /// ----------------------------------------------------------------------------
    /// @returns {Struct} self
    /// ----------------------------------------------------------------------------
    static destroy = function(arguments = {}) {
        var _camera_id = get_id({ camera : arguments.camera })
        camera_destroy(_camera_id)
        return self
    }

    /// ----------------------------------------------------------------------------
    /// @function apply(arguments)
    /// ----------------------------------------------------------------------------
    static apply = function(arguments = {}) {
        var _camera_id = get_id({ camera : arguments.camera })
        camera_apply(_camera_id)
        return self
    }

    /// ----------------------------------------------------------------------------
    /// @function (arguments)
    /// ----------------------------------------------------------------------------
    static copy_transforms = function(arguments = {}) {
        var _camera_id = get_id({ camera : arguments.camera })
        camera_copy_transforms(dest_camera, _camera_id)
        return self
    }

    /// ----------------------------------------------------------------------------
    /// @function get_view(arguments)
    /// ----------------------------------------------------------------------------
    /// @returns {Struct.ViewGeneric}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_view = function(arguments = {}) {
        if (is_instanceof(self, CameraGeneric)) { return private.view }
        return VIEW_GENERIC.create({ camera : arguments.camera })
    }

    /// ----------------------------------------------------------------------------
    /// @function function_name(arguments)
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------

    /*******************************************************************************/
    #region    ―――――――――――――――――――― ATTACHED_FUNCTIONS ――――――――――――――――――――
    /*******************************************************************************/

    /// ----------------------------------------------------------------------------
    /// @description
    /// wrapper : camera_get_update_script
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {Function|Undefined}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_update_script = function(arguments = {}) {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = camera_get_update_script(_camera_id)
        return (_script_function == -1) ? undefined : _script_function
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// wrapper : camera_set_update_script
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// <parameter_description>
    /// @param {Function} arguments.script_function
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {Struct} self
    /// ----------------------------------------------------------------------------
    static set_update_function = function(arguments = {}) {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = arguments.script_function ?? -1
        camera_set_update_script(_camera_id, _script_function)
        return self
	}

    /// ----------------------------------------------------------------------------
    /// @description
    /// wrapper : camera_get_begin_script
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {Function|Undefined}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_begin_function = function(arguments = {}) {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = camera_get_begin_script(_camera_id)
        return (_script_function == -1) ? undefined : _script_function
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// wrapper : camera_set_begin_script
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// <parameter_description>
    /// @param {Function} arguments.script_function
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {Struct} self
    /// ----------------------------------------------------------------------------
    static set_begin_function = function(arguments = {}) {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = arguments.script_function ?? -1
        camera_set_begin_script(_camera_id, _script_function)
        return self
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// wrapper : camera_get_end_script
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {Function|Undefined}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_end_function = function(arguments = {}) {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = camera_get_end_script(_camera_id)
        return (_script_function == -1) ? undefined : _script_function
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// wrapper : camera_set_end_script
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// <parameter_description>
    /// @param {Function} arguments.script_function
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {Struct} self
    /// ----------------------------------------------------------------------------
    static set_end_function = function(arguments = {}) {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = arguments.script_function ?? -1
        camera_set_end_script(_camera_id, _script_function)
        return self
    }

    #endregion ―――――――――――――――――――― ATTACHED_FUNCTIONS ――――――――――――――――――――

}

/*******************************************************************************/
#endregion ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
/*******************************************************************************/