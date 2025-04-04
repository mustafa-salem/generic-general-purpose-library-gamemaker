/// ----------------------------------------------------------------------------
/// @description
/// This function is used to check how many nodes a source has.
/// ----------------------------------------------------------------------------
/// @parameter {string} source
/// The name of the source to check.
/// ----------------------------------------------------------------------------
/// @returns {number}
/// ----------------------------------------------------------------------------
function dialogue_get_node_count(parameters = {}) {
    return ChatterboxSourceNodeCount(parameters.source)
}
