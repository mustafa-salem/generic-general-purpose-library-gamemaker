/// ----------------------------------------------------------------------------
/// @function dialogue_declare_variable(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to declare a YarnScript variable and assign it a
/// default value.
///
/// NOTE: This is the GML equivalent to the YarnScript <<declare>> command.
/// ----------------------------------------------------------------------------
/// @param {string} name
/// The name of the variable to define.
///
/// @param {boolean|number|string} value
/// The value to assign to the variable.
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function dialogue_declare_variable(parameters) {
    if (!is_struct(parameters)) { parameters = {} }
    ChatterboxVariableSet(parameters.name, parameters.value)
    return undefined
}
