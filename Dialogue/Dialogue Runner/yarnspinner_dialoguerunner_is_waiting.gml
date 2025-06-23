/// ----------------------------------------------------------------------------
/// @description
/// This function is used to check if a dialogue is in a 'waiting' state.
/// ----------------------------------------------------------------------------
/// @param {struct} dialogue
/// The dialogue instance to check.
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function yarnspinner_dialoguerunner_is_waiting(parameters = {}) {
    var _dialogue = parameters[$ "dialogue"]
    if (is_instanceof(self, YarnSpinnerDialogueRunner)) { _dialogue ??= self }
    return ChatterboxIsWaiting(_dialogue.private.chatterbox)
}