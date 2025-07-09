/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function dialogue_is_option_condition_satisfied(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : undefined
    if (!is_dialogue(_dialogue)) { return false }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOptionConditionBool(_chatterbox, arguments.option_index)
}

yarnspinner_dialoguerunner_option_is_conditionsatisfied