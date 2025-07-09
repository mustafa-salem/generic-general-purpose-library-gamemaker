/// ----------------------------------------------------------------------------
/// @description
/// This function is used to check if a dialogue is in a 'stopped' state.
/// ----------------------------------------------------------------------------
/// @param {struct} dialogue
/// The dialogue instance to check.
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function yarnspinner_dialoguerunner_is_stopped(parameters = {}) {
    var _dialogue = parameters[$ "dialogue"]
    if (is_instanceof(self, YarnSpinnerDialogueRunner)) { _dialogue ??= self }
    ChatterboxIsStopped(_dialogue.private.chatterbox)
}