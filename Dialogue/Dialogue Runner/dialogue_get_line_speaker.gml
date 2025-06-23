/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {string}
/// ----------------------------------------------------------------------------
function dialogue_get_line_speaker(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue   = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : undefined
    if (!is_dialogue(_dialogue)) { return "" }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetContentSpeaker(private.chatterbox, _content_index, _default)
}

yarnspinner_dialoguerunner_line_get_speaker