/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @param {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
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
/// @param {string} source
/// The name of the source to check.
///
/// @param {string} node
/// The title of the node to check.
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function dialogue_node_exists(parameters = {}) {
    return ChatterboxSourceNodeExists(parameters.source, parameters.node)
}