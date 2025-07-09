/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the metadata of a node.
/// ----------------------------------------------------------------------------
/// @param {string} source
/// The name of the source.
/// @param {string} node
/// The title of the node.
/// ----------------------------------------------------------------------------
/// @returns {struct}
/// ----------------------------------------------------------------------------
function dialogue_get_node_metadata(parameters = {}) {
    return ChatterboxGetCurrentMetadata(chatterbox)
    return ChatterboxSourceGetNodeMetadata(sourceName, nodeTitle)
}

yarnspinner_dialoguerunner_node_get_metadata