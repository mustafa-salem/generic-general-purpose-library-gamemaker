/// ----------------------------------------------------------------------------
/// @description
/// This function is used to advance processing of dialogue instances that are
/// in a "waiting" state.
/// ----------------------------------------------------------------------------
/// @param {struct|array<struct>} dialogue
/// The dialogue instance or array of dialogue instances to target.
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function yarnspinner_dialoguerunner_continue(parameters = {}) {
    /* ―――――――――――――――――――― ARGUMENTS ―――――――――――――――――――― */
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters[$ "dialogue"] ?? is_dialogue(self) ? self : []
    if (!is_array(_dialogue)) { _dialogue = [_dialogue] }
    /* ―――――――――――――――――――― LOGIC ―――――――――――――――――――― */
    for (var i = 0; i < array_length(_dialogue); i++) {
        if (!is_dialogue(_dialogue[i])) { continue }
        var _chatterbox = _dialogue[i].private.chatterbox
        ChatterboxContinue(_chatterbox)
    }
    return undefined
}