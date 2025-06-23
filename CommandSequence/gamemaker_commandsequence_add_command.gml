/// ----------------------------------------------------------------------------
/// @description
/// This function adds a command to the cutscene.
/// ----------------------------------------------------------------------------
/// @param {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// @param {callable} callable
/// The callable that contains the code to run on the execution.
/// @param {mixed} execution_context
/// The context the command will be executed in. This can be a struct or an
/// instance. This will default to the cutscenes default execution context.
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <description>
/// ----------------------------------------------------------------------------
function gamemaker_commandsequence_add_command(parameters = {}) {
    parameters.commandsequence.add_command(parameters)
    return _return
}

function __gamemaker_commandsequence_add_command(parameters = {}) {
    array_push(commands, method(parameters.execution_context, parameters.callable))
    return _return
}