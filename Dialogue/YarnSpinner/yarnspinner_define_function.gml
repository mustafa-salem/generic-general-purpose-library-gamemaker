/// ----------------------------------------------------------------------------
/// @function yarnspinner_define_function(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to link YarnScript functions/commands to a GML function.
///
/// NOTE: The GML function should expect argument0 to be an array of the arguments
/// of the YarnScript function/command.
///
/// NOTE: The GML function should only return a boolean, number, string or undefined.
///
/// NOTE: This action SHOULD NOT be performed after YarnScript sources were loaded.
/// ----------------------------------------------------------------------------
/// @parameter {string} name
/// The name used to refer to the function/command in YarnScript.
///
/// @parameter {callable} callable
/// The callable to link the name to.
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// Whether the function was added successfully.
/// ----------------------------------------------------------------------------
function yarnspinner_define_function(parameters) {
    return ChatterboxAddFunction(parameters.name, parameters.callable)
}