/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the number of times an option has been selected.
/// NOTE: WHEN DOES THIS RESET???
/// ----------------------------------------------------------------------------
/// @param {struct} dialogue
/// <parameter_description>
/// @param {integer} option
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {integer}
/// ----------------------------------------------------------------------------
function dialogue_get_option_chosen_count(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : undefined
    if (!is_dialogue(_dialogue)) { return 0 }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOptionChosen(_chatterbox, arguments.option_index)
}

yarnspinner_dialoguerunner_option_get_chosencount