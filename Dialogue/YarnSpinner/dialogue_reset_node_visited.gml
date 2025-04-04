/// ----------------------------------------------------------------------------
/// @function function_name(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
///
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function dialogue_reset_node_visited(parameters = {}) {
    ChatterboxVariablesClearVisited(node, filename)
    ChatterboxVariablesClearVisitedAll()
    return undefined
}