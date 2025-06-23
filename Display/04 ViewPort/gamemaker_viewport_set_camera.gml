/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_set_camera(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// Assigns the provided camera to the view port with the provided index.
/// If undefined or -1 is provided as a reference to the camera then the current
/// camera will be removed from the view port without a new camera replacing it.
/// ----------------------------------------------------------------------------
/// @param {Struct} arguments
///
/// @param {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
///
/// @param {Struct.CameraGeneric|Real|Undefined} arguments.camera
/// The camera to use or it
/// ----------------------------------------------------------------------------
function gamemaker_viewport_set_camera(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    var _camera_id = gamemaker_camera_get_id({ camera : arguments.camera })
    view_set_camera(_view_port_index, _camera_id)
}