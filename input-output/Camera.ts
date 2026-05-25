/*

* camera_get_default
* camera_set_default
* camera_get_active

* camera_get_view_mat
* camera_set_view_mat
* camera_get_proj_mat
* camera_set_proj_mat

*/

/*
gamemaker_camera_create
gamemaker_camera_get_id
*/

// gamemaker_camera(view_camera[0])
// RoomManager.currentRoom.viewports[0].camera
// RoomManager.currentRoom.getViewport({ index: 0 }).camera
function gamemaker_camera(parameters = {}) {
    return;
}

export class Camera {

    /*
    var _camera_id = arguments.camera_id

    private = {
        camera_id : _camera_id,
        view      : undefined,
    }

    var _self = this
    private.view = VIEW_GENERIC.create({ camera : _self })
    */

    public get_id() {
        if (is_instanceof(this, Camera)) { return private.camera_id }
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

    public create() {
        // return new Camera({ camera_id : arguments["camera_id"] ?? camera_create() });
        // camera_create
        // camera_create_view(room_x, room_y, width, height, [angle, object, x_speed, y_speed, x_border, y_border])
    }

    /// @returns {Struct} this
    public destroy() {
        var _camera_id = get_id({ camera : arguments.camera })
        camera_destroy(_camera_id)
        return this
    }

    public apply() {
        var _camera_id = get_id({ camera : arguments.camera })
        camera_apply(_camera_id)
        return this
    }

    public copy_transforms() {
        var _camera_id = get_id({ camera : arguments.camera })
        camera_copy_transforms(dest_camera, _camera_id)
        return this
    }

    #view: View;

    public get view(): View {
       return this.#view;
    }

    /// wrapper : camera_get_update_script
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// @returns {Function|Undefined}
    public get_update_script() {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = camera_get_update_script(_camera_id)
        return (_script_function == -1) ? undefined : _script_function
    }

    /// wrapper : camera_set_update_script
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// @param {Function} arguments.script_function
    /// @returns {Struct} this
    public set_update_function() {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = arguments.script_function ?? -1
        camera_set_update_script(_camera_id, _script_function)
        return this
    }

    /// wrapper : camera_get_begin_script
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// @returns {Function|Undefined}
    public get_begin_function() {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = camera_get_begin_script(_camera_id)
        return (_script_function == -1) ? undefined : _script_function
    }

    /// wrapper : camera_set_begin_script
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// @param {Function} arguments.script_function
    /// @returns {Struct} this
    public set_begin_function() {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = arguments.script_function ?? -1
        camera_set_begin_script(_camera_id, _script_function)
        return this
    }

    /// wrapper : camera_get_end_script
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// @returns {Function|Undefined}
    public get_end_function() {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = camera_get_end_script(_camera_id)
        return (_script_function == -1) ? undefined : _script_function
    }

    /// wrapper : camera_set_end_script
    /// @param {Struct} arguments
    /// @param {Struct|Real} arguments.camera
    /// @param {Function} arguments.script_function
    /// @returns {Struct} this
    public set_end_function() {
        var _camera_id = get_id({ camera : arguments.camera })
        var _script_function = arguments.script_function ?? -1
        camera_set_end_script(_camera_id, _script_function)
        return this
    }

}