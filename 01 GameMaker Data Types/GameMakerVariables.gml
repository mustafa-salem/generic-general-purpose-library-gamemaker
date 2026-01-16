exists_instance_variable_generic
get_names_instance_variable_generic
get_count_instance_variable_generic
get_instance_variable_generic
set_instance_variable_generic

// variable_global_exists
// variable_global_get
// variable_global_set

///
/// <function_description>
/// @param {Struct} arguments <parameter_description>
/// @returns {type} <return_description>
function initialize_instance_variable_generic(arguments = {}) {
    var _instance
    var _variable_names
    for () {
        var _variable_name
        if (!exists_instance_variable_generic({ instance : _instance, variable_name : _variable_name })) {
            _instance[$ _variable_name] = _variable_value
        }
    }
}