/// ----------------------------------------------------------------------------
/// @description
/// This function returns the 'Object' struct instance associated with the
/// targeted object. In case of failure 'undefined' is returned instead.
/// 'object_exists'
/// ----------------------------------------------------------------------------
/// @parameter {mixed} object
/// The value identifying the object to target.
/// ----------------------------------------------------------------------------
/// @returns {struct.Object|undefined}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_object_get(parameters = {}) {
    var _object_id = object_get_id(parameters)
    return is_numeric(_object_id) ? Object.private.objects[_object_id] : undefined
}