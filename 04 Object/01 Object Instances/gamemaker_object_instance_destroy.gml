/// ----------------------------------------------------------------------------
/// @function gamemaker_object_instance_destroy(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a wrapper for the built-in function:
/// instance_destroy
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {...} arguments.object_instance
/// * Struct.Object
/// * Name.Object
/// * Id.Object
/// * Struct.GameMakerObjectInstance
/// * Id.GameMakerObjectInstance
///
/// @parameter {boolean} arguments.execute_destroy_event
/// Whether to execute the destroy event of the object instance being destroyed.
/// ----------------------------------------------------------------------------
/// @returns {Any} self
/// ----------------------------------------------------------------------------
function gamemaker_object_instance_destroy(arguments) {
    if (!is_struct(arguments)) { /* ERROR */ }

    var _object_instance       = arguments[$ "object_instance"]
    var _execute_destroy_event = arguments[$ "execute_destroy_event"]

    if (!is_array(_object_instance)) { _object_instance = [_object_instance] }

    for (var i = 0; i < array_length(_object_instance); i++) {

    }


    for (var i = 0; i < array_length(_object_instance); i++) {
        if (instance_exists(_object_instance[i])) {
            instance_destroy(_object_instance[i], _execute_destroy_event)
        }
    }
}

function gamemaker_object_instance_destroy(_object_instance = self) {
    // if array is given this function is applied to each element
    if (_object_instance != undefined and is_array(_object_instance)) {
        for (var i = 0; i < array_length(_object_instance); i++) {
            gamemaker_object_instance_destroy(_object_instance[i])
        }
    // regular method of execution
    } else {
        if (_object_instance != undefined and instance_exists(_object_instance)) {
            instance_destroy(_object_instance)
        }
    }
}