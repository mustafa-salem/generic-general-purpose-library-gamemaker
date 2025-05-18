/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @parameter {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @parameter {type} parameters.name
/// <description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <description>
/// ----------------------------------------------------------------------------
function yarnspinner_source_exists_node(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// This function is used to check whether a node exists.
/// ----------------------------------------------------------------------------
/// @parameter {string} source
/// The name of the source to check.
///
/// @parameter {string} node
/// The title of the node to check.
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function dialogue_node_exists(parameters = {}) {
    return ChatterboxSourceNodeExists(parameters.source, parameters.node)
}