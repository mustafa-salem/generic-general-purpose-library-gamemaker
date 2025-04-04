/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {array<struct>}
/// ----------------------------------------------------------------------------
function dialogue_get_options(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : undefined
    if (!is_dialogue(_dialogue)) { return [] }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOptionArray(_chatterbox)
}

yarnspinner_dialoguerunner_get_options