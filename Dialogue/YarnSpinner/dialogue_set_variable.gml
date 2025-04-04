/// ----------------------------------------------------------------------------
/// @function dialogue_set_variable(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function assigns a value to a yarn variable. This is equivalent to
/// using a '<<set>>' statement in a yarn file. If the variable has not been
/// previously declared with the '<<declare>>' statement or the
/// 'dialogue_set_variable' function then it will be created.
///
/// This function may throw an error depending on the library configuration if:
/// * The provided variable name is not a valid yarn variable name.
/// * The provided value is of incorrect type.
/// * The variable has been declared as a constant.
/// * The variable doesn't exist.
/// ----------------------------------------------------------------------------
/// @parameter {string} name
/// The name of the variable
///
/// @parameter {boolean|number|string} value
/// The value to set the variable to.
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function dialogue_set_variable(parameters) {
    ChatterboxVariableSet(parameters.name, parameters.value)
}
