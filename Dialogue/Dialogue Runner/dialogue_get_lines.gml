/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {array}
/// ----------------------------------------------------------------------------
function dialogue_get_lines(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue   = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : undefined
    if (!is_dialogue(_dialogue)) { return [] }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetContentArray(private.chatterbox)
}

yarnspinner_dialoguerunner_get_lines