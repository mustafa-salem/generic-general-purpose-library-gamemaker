/// ----------------------------------------------------------------------------
/// @function dialogue_get_variable(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {string} variable
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined|boolean|number|string}
/// <return_description>
/// ----------------------------------------------------------------------------
function dialogue_get_variable(parameters) {
    return ChatterboxVariableGet(parameters.name, undefined)
}