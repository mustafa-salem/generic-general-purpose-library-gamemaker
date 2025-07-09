/// ----------------------------------------------------------------------------
/// @function dialogue_declare_constant(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to declare a YarnScript constant and assign it a value.
///
/// NOTE: This is the GML equivalent to the YarnScript <<constant>> command.
/// ----------------------------------------------------------------------------
/// @param {string} name
/// The name of the constant to define.
///
/// @param {boolean|number|string} value
/// The value to assign to the constant.
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function dialogue_declare_constant(parameters) {
    if (!is_struct(parameters)) { parameters = {} }
    ChatterboxVariableSetConstant(parameters.name, parameters.value)
    return undefined
}
