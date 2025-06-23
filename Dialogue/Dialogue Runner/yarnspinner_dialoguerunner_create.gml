/// ----------------------------------------------------------------------------
/// @description
/// This function is used to create an instance of 'struct.YarnSpinnerDialogueRunner'.
/// ----------------------------------------------------------------------------
/// @param {string} source
/// The name of the YarnScript source to use.
/// The default argument is the name of the default source.
/// @param {boolean} [singleton]
/// Whether the dialogue should be processed in singleton mode.
/// Defaults to CHATTERBOX_DEFAULT_SINGLETON.
/// @param {mixed} [execution_context]
/// The object instance or struct that should be used as the self context when
/// executing YarnScript functions and commands.
/// This value defaults to the self context where this function is being called.
/// ----------------------------------------------------------------------------
/// @returns {struct}
/// ----------------------------------------------------------------------------
function yarnspinner_dialoguerunner_create(parameters = {}) {
    var _source            = parameters[$ "source"]            ?? undefined
    var _singleton_mode    = parameters[$ "singleton_mode"]    ?? undefined
    var _execution_context = parameters[$ "execution_context"] ?? self

	ChatterboxCreate(_source, _singleton_mode, _execution_context)

    var _dialogue = new YarnSpinnerDialogueRunner()
	return _dialogue
}