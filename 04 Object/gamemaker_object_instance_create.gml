/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a proxy for the static method function:
/// ObjectInstance.create
/// ----------------------------------------------------------------------------
/// @parameter {type} object
/// <parameter_description>
///
/// @parameter {type} x_position
/// <parameter_description>
///
/// @parameter {type} y_position
/// <parameter_description>
///
/// @parameter {type} z_position
/// <parameter_description>
///
/// @parameter {type} layer
/// <parameter_description>
///
/// @parameter {type} variables
/// <parameter_description>
///
/// @parameter {type} parameter_name
/// <parameter_description>
///
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_object_instance_create(parameters = {}) {
    var _x_position    =
    var _y_position    =
    var _layer_handle  =
    var _depth         =
    var _object_handle =
    var _variables = {}

    if () {
        _variables.persistent
    }

    if (_layer_handle != undefined) {
        instance_create_layer(_x_position, _y_position, _layer_handle, _object_handle, _variables)
    } else {
        instance_create_depth(_x_position, _y_position, _depth, _object_handle, _variables)
    }
    return _return
}