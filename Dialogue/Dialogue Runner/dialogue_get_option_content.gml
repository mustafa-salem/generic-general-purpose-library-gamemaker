/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {string}
/// ----------------------------------------------------------------------------
function dialogue_get_option_content(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : undefined
    if (!is_dialogue(_dialogue)) { return "" }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOption(_chatterbox, arguments.option_index)
}

yarnspinner_dialoguerunner_option_get_content