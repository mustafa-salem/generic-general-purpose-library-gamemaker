/// ----------------------------------------------------------------------------
/// @function object_instance_exists(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a proxy for the static method function:
/// ObjectInstance.exists
/// ----------------------------------------------------------------------------
function object_instance_exists(arguments) {
    return instance_exists(_object_instance_id or _object_id)
}