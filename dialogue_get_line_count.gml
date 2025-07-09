/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the number of lines of content currently
/// available to a dialogue instance.
/// ----------------------------------------------------------------------------
/// @param {struct} dialogue
/// The dialogue instance to target.
/// ----------------------------------------------------------------------------
/// @returns {integer}
/// ----------------------------------------------------------------------------
function dialogue_get_line_count(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue   = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : undefined
    if (!is_dialogue(_dialogue)) { return 0 }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetContentCount(_chatterbox)
}

yarnspinner_dialoguerunner_get_linecount