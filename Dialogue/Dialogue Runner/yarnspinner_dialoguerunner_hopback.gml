/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {struct}
/// The dialogue
/// ----------------------------------------------------------------------------
function yarnspinner_dialoguerunner_hopback(parameters = {}) {
    var _dialogue = parameters[$ "dialogue"] ?? (is_instanceof(self, YarnSpinnerDialogueRunner) ? self : undefined)
    ChatterboxHopBack(private.chatterbox)
    return _dialogue
}