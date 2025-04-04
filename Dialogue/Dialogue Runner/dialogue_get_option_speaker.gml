/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the speaker string of an option available to a
/// dialogue instance.
/// ----------------------------------------------------------------------------
/// @parameter {struct} dialogue
/// <parameter_description>
/// @parameter {integer} option
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {string}
/// ----------------------------------------------------------------------------
function dialogue_get_option_speaker(parameters = {}) {
    ChatterboxGetOption(_chatterbox, arguments.option_index)
    return _return
}

yarnspinner_dialoguerunner_option_get_speaker