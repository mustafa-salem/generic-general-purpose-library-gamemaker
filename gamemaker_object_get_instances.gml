/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_object_get_instances(parameters = {}) {
    var _object_handle = gamemaker_object(parameters.object)
    var _instances = []
    for (var i = 0; i < instance_number(_object_handle); i++) {
        var _instance = instance_find(_object_handle, i)
        if (_instance == noone) { break }
        array_push(_instances, _instance)
    }
    return _instances
}