/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Type} arguments.camera
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {Struct.ViewGeneric}
/// <return_description>
/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a proxy for the static method function:
/// CameraGeneric.
/// ----------------------------------------------------------------------------
function get_view_camera_generic(arguments = {}) {
    if (is_struct(arguments.camera)) {
        return arguments.camera.private.view
    } else {
        return new ViewGeneric({ camera : arguments.camera })
    }
}