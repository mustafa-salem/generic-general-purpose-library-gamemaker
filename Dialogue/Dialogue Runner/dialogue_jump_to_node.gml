/// ----------------------------------------------------------------------------
/// @description
/// This function is used to make dialogue jump to a node in a source.
///
/// NOTE: This function differs from a YarnScript <<jump>> command in that it
/// restarts dialogue processing from the top of the new node. Any progress in
/// previous nodes will be reset for this dialogue instance and it won't be
/// possible to get dialogue content from the previous node in non 'singleton'
/// mode.
/// ----------------------------------------------------------------------------
/// @parameter {type} dialogue
/// The dialogue to target.
/// @parameter {type} [source]
/// The name of the source. Defaults to the current source.
/// @parameter {string} node
/// The title of the node to jump to.
/// ----------------------------------------------------------------------------
/// @returns {struct.YarnSpinnerDialogueRunner}
/// ----------------------------------------------------------------------------
function dialogue_jump_to_node(parameters = {}) {
    var _dialogue    = parameters[$ "dialogue"]
    var _chatterbox  = _dialogue.private.chatterbox
    var _source_name = parameters[$ "source"]
    var _node_title  = parameters[$ "node"]
    ChatterboxJump(_chatterbox, _node_title, _source_name)
    return _dialogue
}

yarnspinner_dialoguerunner_jump