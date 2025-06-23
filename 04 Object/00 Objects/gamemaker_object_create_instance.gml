/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a proxy for the static method function:
/// GameMakerObjectInstance.create
/// ----------------------------------------------------------------------------
/// @param {type} object
/// <parameter_description>
///
/// @param {type} x_position
/// <parameter_description>
///
/// @param {type} y_position
/// <parameter_description>
///
/// @param {type} z_position
/// <parameter_description>
///
/// @param {type} layer
/// <parameter_description>
///
/// @param {type} variables
/// <parameter_description>
///
/// @param {type} parameter_name
/// <parameter_description>
///
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_object_create_instance(parameters = {}) {
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