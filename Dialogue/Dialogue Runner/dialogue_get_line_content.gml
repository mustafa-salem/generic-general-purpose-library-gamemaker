/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {struct} dialogue
/// <parameter_description>
/// @parameter {numer} index
/// <parameter_description>
/// @parameter {string} separator
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {string}
/// ----------------------------------------------------------------------------
function dialogue_get_line_content(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue   = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : undefined
    if (!is_dialogue(_dialogue)) { return "" }
    var _chatterbox = _dialogue.private.chatterbox
    var _index      = parameters[$ ""]
    var _separator  = parameters[$ ""]
    if (is_numeric(_index)) {
        return ChatterboxGetContent(_chatterbox, _index)
    } else {
        return ChatterboxGetAllContentString(_chatterbox, _separator)
    }
}

yarnspinner_dialoguerunner_line_get_content