/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the number of options available to a dialogue
/// instance.
/// ----------------------------------------------------------------------------
/// @param {type} dialogue
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {integer}
/// ----------------------------------------------------------------------------
function yarnspinner_dialoguerunner_get_optioncount(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : undefined
    if (!is_dialogue(_dialogue)) { return 0 }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOptionCount(_chatterbox)
}