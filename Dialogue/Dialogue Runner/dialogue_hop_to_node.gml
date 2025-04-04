/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function dialogue_hop_to_node(parameters = {}) {
    var _source_name = arguments[$ "source_name"] ?? get_current_source_name()
    var _node_title  = arguments[$ "node_title"]
    ChatterboxHop(private.chatterbox, _node_title, _source_name)
}

yarnspinner_dialoguerunner_hop