/// ----------------------------------------------------------------------------
/// @description
/// This function is used to check whether a value is a dialogue instance.
/// ----------------------------------------------------------------------------
/// @param {any} value - The value to check.
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function is_dialogue(_value) {
    return is_instanceof(_value, YarnSpinnerDialogueRunner)
}

yarnspinner_dialoguerunner_is