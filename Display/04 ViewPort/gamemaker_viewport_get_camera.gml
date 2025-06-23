/// ----------------------------------------------------------------------------
/// @function gamemaker_viewport_get_camera(arguments)
/// ----------------------------------------------------------------------------
/// @param {Struct} arguments
///
/// @param {Struct.ViewPortGeneric|Real} arguments.view_port
/// The view port to target or its index (0 - 7).
/// ----------------------------------------------------------------------------
/// @returns {Struct.CameraGeneric|Undefined}
/// The camera assigned to the view port with the provided index.
/// If no camera is assigned, undefined will be returned.
/// ----------------------------------------------------------------------------
function gamemaker_viewport_get_camera(arguments = {}) {
    var _view_port_index = gamemaker_viewport_get_index({ view_port : arguments.view_port })
    var _camera_id = view_get_camera(_view_port_index)
    if (_camera_id = -1) { return undefined }
    return gamemaker_camera_create({ camera_id : _camera_id })
}