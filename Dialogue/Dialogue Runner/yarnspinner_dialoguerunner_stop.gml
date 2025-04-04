/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} dialogue
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function yarnspinner_dialoguerunner_stop(parameters = {}) {
    var _dialogue   = parameters[$ "dialogue"] ?? is_instanceof(self, YarnSpinnerDialogueRunner) ? self : undefined
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxStop(_chatterbox)
}