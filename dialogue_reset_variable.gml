/// ----------------------------------------------------------------------------
/// @function dialogue_reset_variable(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to reset the values of YarnScript variables to the
/// value assigned to them through a <<declare>> command.
/// ----------------------------------------------------------------------------
/// @param {string} name
/// The name of the variable.
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function dialogue_reset_variable(parameters = {}) {
    ChatterboxVariableReset(name)
    ChatterboxVariablesResetAll()
    return undefined
}