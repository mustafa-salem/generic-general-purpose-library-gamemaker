class YarnSpinner {

}

/// 
/// @param {type} parameter_name
/// <parameter_description>
///
/// @returns {type}
function yarnspinner_add_function(parameters = {}) {
    return _return
}

/// This function is used to link YarnScript functions/commands to a GML function.
///
/// NOTE: The GML function should expect argument0 to be an array of the arguments
/// of the YarnScript function/command.
///
/// NOTE: The GML function should only return a boolean, number, string or undefined.
///
/// NOTE: This action SHOULD NOT be performed after YarnScript sources were loaded.
/// ----------------------------------------------------------------------------
/// @param {string} name
/// The name used to refer to the function/command in YarnScript.
///
/// @param {callable} callable
/// The callable to link the name to.
/// @returns {Bool}
/// Whether the function was added successfully.
function yarnspinner_define_function(parameters) {
    return ChatterboxAddFunction(parameters.name, parameters.callable)
}

/// This function is used to create an instance of 'Struct.YarnSpinnerDialogueRunner'.
/// ----------------------------------------------------------------------------
/// @param {string} source
/// The name of the YarnScript source to use.
/// The default argument is the name of the default source.
/// @param {Bool} [singleton]
/// Whether the dialogue should be processed in singleton mode.
/// Defaults to CHATTERBOX_DEFAULT_SINGLETON.
/// @param {mixed} [execution_context]
/// The object instance or struct that should be used as the this context when
/// executing YarnScript functions and commands.
/// This value defaults to the this context where this function is being called.
/// @returns {Struct}
function yarnspinner_dialoguerunner_create(parameters = {}) {
    var _source            = parameters["source"]            ?? undefined
    var _singleton_mode    = parameters["singleton_mode"]    ?? undefined
    var _execution_context = parameters["execution_context"] ?? this

    ChatterboxCreate(_source, _singleton_mode, _execution_context)

    var _dialogue = new YarnSpinnerDialogueRunner()
    return _dialogue
}

/// This function is used to get the number of options available to a dialogue
/// instance.
/// ----------------------------------------------------------------------------
/// @param {type} dialogue
/// <parameter_description>
/// @returns {integer}
function yarnspinner_dialoguerunner_get_optioncount(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
    if (!is_dialogue(_dialogue)) {
        return 0
    }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOptionCount(_chatterbox)
}

/// 
/// @param {type} parameter_name
/// <parameter_description>
/// @returns {Struct}
/// The dialogue
function yarnspinner_dialoguerunner_hopback(parameters = {}) {
    var _dialogue = parameters["dialogue"] ?? (is_instanceof(this, YarnSpinnerDialogueRunner) ? this : undefined)
    ChatterboxHopBack(private.chatterbox)
    return _dialogue
}

/// 
/// @param {type} parameter_name
/// <parameter_description>
///
/// @returns {type}
function yarnspinner_dialoguerunner(parameters = {}) {
    return _return
}

/// 
/// @param {type} parameter_name
/// <parameter_description>
///
/// @returns {type}
function yarnspinner_dialogueview(parameters = {}) {
    return _return
}

/// 
/// @param {string} node
/// <parameter_description>
/// @returns {string}
function yarnspinner_get_simplestring(parameters = {}) {
    return _return
}

/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// @returns {type}
function yarnspinner_source_exists_node(parameters = {}) {
    return _return
}


/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// @returns {type}
function yarnspinner_source_get_nodecount(parameters = {}) {
    return ChatterboxSourceNodeCount(sourceName)
}

/// Parses an array of YarnScript files stored in your project's Included Filess directory and
/// creates a CSV that contains all strings in those source files. The YarnScript files are modified
/// by this function such that they link up to the CSV. You should then create a copy of the CSV
/// file for each language you're localising into and load then using ChatterboxLocalizationLoad()
/// when you wish to localise Chatterbox text into a different language.
///
/// WARNING: THIS FUNCTION WILL MODIFY SOURCE FILES ON DISK INSIDE YOUR PROJECT
/// ENSURE YOU HAVE BACKED UP YOUR WORK IN SOURCE CONTROL.
///
/// ----------------------------------------------------------------------------
/// @param {string|Array<String>} source_filepath
/// The filepath or array of filepaths of the source files for which to create
/// a localisation.
///
/// NOTE: This filepath must be relative to CHATTERBOX_INCLUDED_FILES_SUBDIRECTORY.
///
/// @param {string|Array<String>} localisation_filepath
/// The filepath or array of filepaths where to create localisation files.
///
/// NOTE: This filepath must be relative to CHATTERBOX_INCLUDED_FILES_SUBDIRECTORY.
/// @returns {Undefined}
function dialogue_build_localisation(parameters) {
    if (!is_struct(parameters)) { parameters = {} }
    var _source_filepath       = parameters["source_filepath"]
    var _localisation_filepath = parameters["localisation_filepath"]
    ChatterboxLocalizationBuild(_source_filepath, _localisation_filepath)
    return undefined
}

/// This function is used to declare a YarnScript constant and assign it a value.
///
/// NOTE: This is the GML equivalent to the YarnScript <<constant>> command.
/// ----------------------------------------------------------------------------
/// @param {string} name
/// The name of the constant to define.
///
/// @param {boolean|number|string} value
/// The value to assign to the constant.
/// @returns {Undefined}
function dialogue_declare_constant(parameters) {
    if (!is_struct(parameters)) { parameters = {} }
    ChatterboxVariableSetConstant(parameters.name, parameters.value)
    return undefined
}

/// This function is used to declare a YarnScript variable and assign it a
/// default value.
///
/// NOTE: This is the GML equivalent to the YarnScript <<declare>> command.
/// ----------------------------------------------------------------------------
/// @param {string} name
/// The name of the variable to define.
///
/// @param {boolean|number|string} value
/// The value to assign to the variable.
/// @returns {Undefined}
function dialogue_declare_variable(parameters) {
    if (!is_struct(parameters)) { parameters = {} }
    ChatterboxVariableSet(parameters.name, parameters.value)
    return undefined
}

/// 
/// @param {string} variable
/// <parameter_description>
/// @returns {Bool}
function dialogue_exists_variable(parameters = {}) {
    return _return
}

/// This function is used to get a JSON string containing a key-value pair for
/// each YarnScript variable and the number of times nodes were visited.
///
/// NOTE: YarnScript constants can't be exported.
/// @returns {string}
function dialogue_export_variables(parameters = {}) {
    return ChatterboxVariablesExport()
}

/// This function is used to run a find and replace operation on source files
/// whenever they are loaded.
///
/// NOTE: This action SHOULD NOT be performed after YarnScript sources were loaded.
/// ----------------------------------------------------------------------------
/// @param {string} search
/// The string to seach for.
///
/// @param {string} replace
/// The string to replace it with.
/// @returns {Undefined}
function dialogue_find_and_replace(parameters = {}) {
    ChatterboxAddFindReplace(parameters.search, parameters.replace)
    return undefined
}

/// 
/// @param {type} parameter_name
/// <parameter_description>
///
/// @returns {type}
function dialogue_find_variables(parameters = {}) {
    ChatterboxVariablesFind(substring, mode, caseSensitive)
    return _return
}

/// 
/// @param {Struct} dialogue
/// <parameter_description>
/// @param {numer} index
/// <parameter_description>
/// @param {string} separator
/// <parameter_description>
/// @returns {string}
function dialogue_get_line_content(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue   = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
    if (!is_dialogue(_dialogue)) { return "" }
    var _chatterbox = _dialogue.private.chatterbox
    var _index      = parameters[""]
    var _separator  = parameters[""]
    if (is_numeric(_index)) {
        return ChatterboxGetContent(_chatterbox, _index)
    } else {
        return ChatterboxGetAllContentString(_chatterbox, _separator)
    }
}

yarnspinner_dialoguerunner_line_get_content

/// 
/// @param {type} dialogue
/// <parameter_description>
/// @param {type} line_index
/// <parameter_description>
/// @returns {Array<String>}
/// An array containing the strings of the metadata tags.
function dialogue_get_line_metadata(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue   = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
    if (!is_dialogue(_dialogue)) { return [] }
    var _chatterbox = _dialogue.private.chatterbox
    var _content_index = parameters["line_index"]
    return ChatterboxGetContentMetadata(_chatterbox, _content_index)
}

yarnspinner_dialoguerunner_line_get_metadata



/// 
/// @param {type} parameter_name
/// <parameter_description>
/// @returns {array}
function dialogue_get_lines(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue   = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
    if (!is_dialogue(_dialogue)) { return [] }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetContentArray(private.chatterbox)
}

yarnspinner_dialoguerunner_get_lines

/// 
/// @param {type} parameter_name
/// <parameter_description>
/// @returns {type}
function dialogue_get_node_visited_count(parameters = {}) {
    return ChatterboxGetVisited(nodeTitle, filename)
}

yarnspinner_dialoguerunner_node_get_visitedcount

/// This function is used to get the number of times an option has been selected.
/// NOTE: WHEN DOES THIS RESET???
/// ----------------------------------------------------------------------------
/// @param {Struct} dialogue
/// <parameter_description>
/// @param {integer} option
/// <parameter_description>
/// @returns {integer}
function dialogue_get_option_chosen_count(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
    if (!is_dialogue(_dialogue)) { return 0 }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOptionChosen(_chatterbox, arguments.option_index)
}

yarnspinner_dialoguerunner_option_get_chosencount

/// 
/// @param {type} parameter_name
/// <parameter_description>
/// @returns {string}
function dialogue_get_option_content(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
    if (!is_dialogue(_dialogue)) { return "" }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOption(_chatterbox, arguments.option_index)
}

yarnspinner_dialoguerunner_option_get_content

/// 
/// @param {type} parameter_name
/// <parameter_description>
/// @returns {Array<String>}
function dialogue_get_option_metadata(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
    if (!is_dialogue(_dialogue)) { return "" }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOptionMetadata(_chatterbox, arguments.option_index)
}

yarnspinner_dialoguerunner_option_get_metadata

/// This function is used to get the speaker data string of an option available
/// to a dialogue instance.
/// ----------------------------------------------------------------------------
/// @param {Struct} dialogue
/// <parameter_description>
/// @param {integer} option
/// <parameter_description>
/// @returns {string}
function dialogue_get_option_speaker_data(parameters = {}) {
    return _return
}

yarnspinner_dialoguerunner_option_get_speakerdata

/// This function is used to get the speaker string of an option available to a
/// dialogue instance.
/// ----------------------------------------------------------------------------
/// @param {Struct} dialogue
/// <parameter_description>
/// @param {integer} option
/// <parameter_description>
/// @returns {string}
function dialogue_get_option_speaker(parameters = {}) {
    ChatterboxGetOption(_chatterbox, arguments.option_index)
    return _return
}

yarnspinner_dialoguerunner_option_get_speaker

/// ----------------------------------------------------------------------------
/// This function is used to get the speech string of an option available to a
/// dialogue instance.
/// ----------------------------------------------------------------------------
/// @param {Struct} dialogue
/// <parameter_description>
/// @param {integer} option
/// <parameter_description>
/// @returns {string}
function dialogue_get_option_speech(parameters = {}) {
    return _return
}

yarnspinner_dialoguerunner_option_get_speech

/// 
/// @param {type} parameter_name
/// <parameter_description>
/// @returns {Array<struct>}
function dialogue_get_options(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
    if (!is_dialogue(_dialogue)) { return [] }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOptionArray(_chatterbox)
}

yarnspinner_dialoguerunner_get_options

/// 
/// @param {type} parameter_name
/// <parameter_description>
///
/// @returns {type}
function dialogue_get_source_name(parameters = {}) {
    return ChatterboxGetCurrentSource(chatterbox)
}

/// This function is used to get the tags associated with a source.
/// ----------------------------------------------------------------------------
/// @param {string} source
/// The name of the source to target.
/// @returns {Array<String>}
function dialogue_get_source_tags(parameters = {}) {
    return ChatterboxSourceGetTags(sourceName)
}

/// 
/// @param {string} variable
/// <parameter_description>
/// @returns {undefined|boolean|number|string}
function dialogue_get_variable(parameters) {
    return ChatterboxVariableGet(parameters.name, undefined)
}

/// 
/// @param {type} parameter_name
/// <parameter_description>
/// @returns {type}
function dialogue_hop_to_node(parameters = {}) {
    var _source_name = arguments["source_name"] ?? get_current_source_name()
    var _node_title  = arguments["node_title"]
    ChatterboxHop(private.chatterbox, _node_title, _source_name)
}

yarnspinner_dialoguerunner_hop

/// This function is used to set YarnScript variables based on the data of a
/// JSON string created by "dialogue_export_variables".
///
/// NOTE: YarnScript constants can't be imported.
///
/// NOTE: YarnScript variables not presented in the JSON string will be reset to
/// their default value or deleted if they don't have a default value.
/// ----------------------------------------------------------------------------
/// @param {string} string
/// @returns {Undefined}
function dialogue_import_variables(parameters = {}) {
    var _string = parameters["string"]
    ChatterboxVariablesImport(_string)
    return undefined
}

/// This function is used to check if a source is loaded to memory.
/// ----------------------------------------------------------------------------
/// @param {string} source
/// The name of the source to check.
/// @returns {Bool}
function dialogue_is_loaded_source(parameters = {}) {
    var _name = parameters["source"]
    return ChatterboxIsLoaded(_name)
}

/// 
/// @param {type} parameter_name
/// <parameter_description>
/// @returns {Bool}
function dialogue_is_option_condition_satisfied(parameters = {}) {
    if (!is_struct(parameters)) { parameters = {} }
    var _dialogue = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
    if (!is_dialogue(_dialogue)) { return false }
    var _chatterbox = _dialogue.private.chatterbox
    return ChatterboxGetOptionConditionBool(_chatterbox, arguments.option_index)
}

yarnspinner_dialoguerunner_option_is_conditionsatisfied

/// This function is used to load a CSV file generated by "dialogue_build_localisation"
///
/// NOTE: Only one localisation can be active at any time.
///
/// NOTE: The localisation is applied the next time a dialogue instance executes
/// a flow control function.
///
/// NOTE: Any lines and options that don't have a #line tag and a corresponding
/// value in the active localisation file will be displayed in their native language.
/// ----------------------------------------------------------------------------
/// @param {string} filepath
/// The filepath of the localisation file to load.
///
/// NOTE: The filepath is relative to CHATTERBOX_INCLUDED_FILES_SUBDIRECTORY.
/// @returns {Undefined}
function dialogue_load_localisation(parameters) {
    if (!is_struct(parameters)) { parameters = {} }
    var _filepath = parameters["filepath"]
    ChatterboxLocalizationLoad(_filepath)
    return undefined
}

/// This function is used to load a YarnScript source from a file, string or
/// buffer.
/// ----------------------------------------------------------------------------
/// @param {string} name
/// The name that should be used to reference the source.
///
/// NOTE: When loading from a file this value will default to the filepath.
///
/// NOTE: When loading from a string or buffer this parameter is required.
///
/// NOTE: If you are using the name of an already existing source then this
/// action will enter any existing dialogue instances using that source into a
/// "stopped" state.
///
/// @param {string} filepath
/// The filepath to load the YarnScript source from.
///
/// NOTE: The filepath must be relative to CHATTERBOX_INCLUDED_FILES_SUBDIRECTORY.
///
/// @param {string} string
/// The string to load the YarnScript source from.
///
/// NOTE: The string must be correctly formatted as a .yarn file.
///
/// @param {type} buffer
/// The handle or index of the buffer to load the YarnScript source from.
/// @returns {Undefined}
function dialogue_load_source(parameters = {}) {
    var _name     = parameters["name"]
    var _filepath = parameters["filepath"]
    var _string   = parameters["string"]
    var _buffer   = parameters["buffer"]

    // loads YarnScript from a file
    if (is_string(_filepath)) {
        ChatterboxLoadFromFile(_filepath, _name)
        return undefined
    }
    // loads YarnScript from a string
    if (is_string(_string)) {
        ChatterboxLoadFromString(_name, _string)
        return undefined
    }
    // loads YarnScript from a buffer
    if (is_numeric(_buffer) and buffer_exists(_buffer)) {
        ChatterboxLoadFromBuffer(_name, _buffer)
        return undefined
    }
}

/// This function is used to reset the localisation of all dialogue instances
/// to the native text of the YarnScript sources.
/// @returns {Undefined}
function dialogue_reset_localisation() {
    ChatterboxLocalizationClear()
    return undefined
}

/// 
/// @param {type} parameter_name
/// <parameter_description>
///
/// @returns {Undefined}
function dialogue_reset_node_visited(parameters = {}) {
    ChatterboxVariablesClearVisited(node, filename)
    ChatterboxVariablesClearVisitedAll()
    return undefined
}

/// This function is used to reset the values of YarnScript variables to the
/// value assigned to them through a <<declare>> command.
/// ----------------------------------------------------------------------------
/// @param {string} name
/// The name of the variable.
/// @returns {Undefined}
function dialogue_reset_variable(parameters = {}) {
    ChatterboxVariableReset(name)
    ChatterboxVariablesResetAll()
    return undefined
}

/// This function is used to select an option available to a dialogue instance.
/// ----------------------------------------------------------------------------
/// @param {type} dialogue
/// The dialogue instance to target.
/// @param {integer} option
/// The index of the option to select.
/// @returns {Undefined}
function dialogue_select_option(parameters = {}) {
    ChatterboxSelect(chatterbox, optionIndex)
    return undefined
}

yarnspinner_dialoguerunner_select_option

/// This function assigns a value to a yarn variable. This is equivalent to
/// using a '<<set>>' statement in a yarn file. If the variable has not been
/// previously declared with the '<<declare>>' statement or the
/// 'dialogue_set_variable' function then it will be created.
///
/// This function may throw an error depending on the library configuration if:
/// * The provided variable name is not a valid yarn variable name.
/// * The provided value is of incorrect type.
/// * The variable has been declared as a constant.
/// * The variable doesn't exist.
/// ----------------------------------------------------------------------------
/// @param {string} name
/// The name of the variable
///
/// @param {boolean|number|string} value
/// The value to set the variable to.
/// @returns {type}
function dialogue_set_variable(parameters) {
    ChatterboxVariableSet(parameters.name, parameters.value)
}

/// This function is used to unload YarnScript sources from memory.
///
/// NOTE: This action will enter any existing dialogue instances using those
/// source into a "stopped" state.
/// ----------------------------------------------------------------------------
/// @param {string|Array<String>} source
/// The name or the array of names of the sources to unload.
/// @returns {Undefined}
function dialogue_unload_source(parameters = {}) {
    var _names = parameters["source"]
    if (!is_array(_names)) { _names = [_names] }
    for (let i = 0; i < _names.length; i++) {
        if (!is_string(_names[i])) { continue }
        ChatterboxUnload(_names[i])
    }
    return undefined
}

/// This function is used to check whether a value is a dialogue instance.
/// ----------------------------------------------------------------------------
/// @param {any} value - The value to check.
/// @returns {Bool}
function is_dialogue(_value) {
    return is_instanceof(_value, YarnSpinnerDialogueRunner)
}

yarnspinner_dialoguerunner_is