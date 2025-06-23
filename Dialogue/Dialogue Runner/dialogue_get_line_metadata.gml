/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} dialogue
/// <parameter_description>
/// @param {type} line_index
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {array<string>}
/// An array containing the strings of the metadata tags.
/// ----------------------------------------------------------------------------
function dialogue_get_line_metadata(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue   = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : undefined
    if (!is_dialogue(_dialogue)) { return [] }
    var _chatterbox = _dialogue.private.chatterbox
    var _content_index = parameters[$ "line_index"]
    return ChatterboxGetContentMetadata(_chatterbox, _content_index)
}

yarnspinner_dialoguerunner_line_get_metadata