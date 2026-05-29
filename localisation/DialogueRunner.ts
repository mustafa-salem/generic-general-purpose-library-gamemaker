/// load_source
/// define_function
/// unload_source
/// is_source_loaded
/// get_line
// get_content_string
// get_lines
// get_line_struct_array

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// Feather disable all

// Whether chatterboxes should default to singleton mode. This is useful to most RPGs where lines
// of dialogue arrive one at a time. More modern narrative games tend to deliver larger chunks of
// text and, as such, singleton mode is less useful for those sorts of games.
#macro CHATTERBOX_DEFAULT_SINGLETON  true

// Root folder in Included Files to look in for Chatterbox files.
#macro CHATTERBOX_INCLUDED_FILES_SUBDIRECTORY  ""

// Whether to allow scripts to be added as Chatterbox functions. This is potentially insecure but
// also very convenient.
#macro CHATTERBOX_ALLOW_SCRIPTS  true

// Whether Chatterbox functions should be executed using an array of parameters.
#macro CHATTERBOX_FUNCTION_ARRAY_ARGUMENTS  true

// Whether to enter into a "wait" state before options are presented when using singleton
// chatterboxes. This is helpful for games where you want to visually replace dialogue with a
// series of options for the player to choose from.
#macro CHATTERBOX_SINGLETON_WAIT_BEFORE_OPTION  false

// Whether a chatterbox should enter a "wait" state before marking the chatterbox as stopped. This
// makes implementing dialogue boxes that automatically destroy themselves a lot easier.
#macro CHATTERBOX_WAIT_BEFORE_STOP  true

// Whether to add rejected (failed) options to the list of chooseable options. The default setting
// is <true> which will show failed options in the list and therefore requires that you filter
// those options yourself. This is useful for games like Fallout 3 which show you options that you
// could have taken if you had e.g. higher charisma. Set this option to <false> if you deliberately
// want to hide every failed option (which is a lot simpler to implement!).
#macro CHATTERBOX_SHOW_REJECTED_OPTIONS  true

// Whether to show extra debug information. This is useful to narrow down problems that you might
// run into.
#macro CHATTERBOX_VERBOSE  false

// Replaces backslashes \ in Chatterbox aliases with front slashes /. This improves consistency
// when accessing Included Files in folder across different platforms.
#macro CHATTERBOX_REPLACE_ALIAS_BACKSLASHES  true

// Whether to allow use of keyword operators. Setting this macro to <true> will enable use of the
// following operators as keywords:
//    and = &&
//    le  = <
//    lt  = <
//    ge  = >
//    gt  = >
//    or  = ||
//    lte = <=
//    gte = >=
//    leq = <=
//    geq = >=
//    eq  = ==
//    is  = ==
//    neq = !=
//    to  = =
//    not = !
#macro CHATTERBOX_KEYWORD_OPERATORS  true

// Whether nodes without an explicit <<stop>> or <<hopback>> instruct at the end should default
// to <<hopback>>. Legacy behaviour (pre-2.7) is to set this to <false>
#macro CHATTERBOX_END_OF_NODE_HOPBACK  true

// Action mode controls how <<actions>> are processed by Chatterbox
// There are three possible values:
//
// CHATTERBOX_ACTION_MODE = 0
// This is the officially recommended behaviour. The full contents of the action (everything
// between << and >>) are passed as a string to a function for parsing and execution by the
// developer (you). I think this behaviour is stupid but I've included it here because technically
// that is what the YarnScript specification says. You can set the function that receives the
// action string by setting CHATTERBOX_ACTION_FUNCTION. Exactly what syntax you use for
// actions is therefore completely up to you.
//
// CHATTERBOX_ACTION_MODE = 1
// Chatterbox will treat actions as expressions to be executed in a similar manner to in-line
// expressions. This is covenient if you want to treat actions as little snippets of code
// that Chatterbox can run. Syntax for actions becomes the same as in-line expressions, which
// is broadly similar to "standard" GML syntax. Functions that you wish to execute must be added
// by calling ChatterboxAddFunction().
//
// An example would be: <<giveItem("amulet", 1)>>
//
//
// CHATTERBOX_ACTION_MODE = 2
// Chatterbox will treat actions as expressions with a greatly simplified syntax. This is
// useful for writers and narrative designers who are less familiar with the particulars of
// coding and instead want to use a simple syntax to communicate with the underlying GameMaker
// application. The action is sliced into arguments using spaces as delimiters. The first
// token in the action is the name of the function call, as added by ChatterboxAddFunction().
// Subsequent tokens are passed to the function call with each token being a function parameter.
// All parameters are passed as strings. If a parameter needs to contain a space then you may
// enclose the string in " double quote marks.
//
// An example, analogous to the example above, would be: <<giveItem amulet 1>>

#macro CHATTERBOX_ACTION_MODE      1           //See above
#macro CHATTERBOX_ACTION_FUNCTION  (undefined) //The function to receive <<action>> contents. This will only be called if CHATTERBOX_ACTION_MODE is 0

// Chatterbox offers three helper functions to assist with parsing content strings as dialogue:
//   ChatterboxGetContentSpeech()
//   ChatterboxGetContentSpeaker()
//   ChatterboxGetContentSpeakerData()
//
// A content string must be formatted in a specific way for Chatterbox's helper functions to
// work correctly:
//
//   Speaker Name: The words that the speaker is saying, called "speech" in Chatterbox.
//
// Calling ChatterboxGetContentSpeaker() with the above string as the input will output "Speaker Name".
// Calling ChatterboxGetContentSpeech() will output everything after the colon, though without the
// leading whitespace between the colon and "The".
//
// Chatterbox also offers "speaker data". This is an additional string that can be attached to
// a speaker for a content string. The formatting looks like this:
//
//   Speaker Name[additional speaker data]: The words that the speaker is saying, called "speech" in Chatterbox.
//
// Calling ChatterboxGetContentSpeakerData() will return "additional speaker data" in this case. For
// more complex situations you may want to perform additional parsing on the speaker data yourself.
//
// The following macros control what substrings are used to split speaker and speech, and what
// substrings separate the speaker data from the speaker.

#macro CHATTERBOX_SPEAKER_DELIMITER   ":"  //Character that separates speaker (and speaker data) from speech. This can be any arbitrary string, potentially composed of multiple characters
#macro CHATTERBOX_SPEAKER_DATA_START  "["  //Character that indicates where the speaker data string starts. This can be any arbitrary string, potentially composed of multiple characters
#macro CHATTERBOX_SPEAKER_DATA_END    "]"  //Character that indicates where the speaker data string ends. This can be any arbitrary string, potentially composed of multiple characters

#macro CHATTERBOX_ESCAPE_FILE_TAGS           true
#macro CHATTERBOX_ESCAPE_NODE_TAGS           true
#macro CHATTERBOX_ESCAPE_CONTENT             true
#macro CHATTERBOX_ESCAPE_EXPRESSION_STRINGS  false

#macro CHATTERBOX_LOCALIZATION_ACKNOWLEDGE_WARNING  false



//  Advanced

// Whether to declare variables when Chatterbox script is compiled. Set to <false> for the highly
// inconvenient legacy (2.1 and earlier) behaviour.
#macro CHATTERBOX_DECLARE_ON_COMPILE  true

#macro CHATTERBOX_LEGACY_WEIRD_OPERATOR_PRECEDENCE  false  //Set to <true> if you're coming from pre-2.7.1

#macro CHATTERBOX_INDENT_TAB_SIZE     4    //Space size of a tab character
#macro CHATTERBOX_FILENAME_SEPARATOR  ":"  //The character used to separate filenames from node titles in redirects and options

#macro CHATTERBOX_LINE_HASH_SIZE           6
#macro CHATTERBOX_HIDE_LINE_HASH_METADATA  true

#macro CHATTERBOX_ERROR_NONSTANDARD_SYNTAX   true  //Throws an error when using a reasonable, though technically illegal, syntax e.g. <<end if>> or <<elseif>>
#macro CHATTERBOX_ERROR_UNDECLARED_VARIABLE  true  //Throws an error when trying to set an undeclared variable
#macro CHATTERBOX_ERROR_UNSET_VARIABLE       true  //Throws an error when trying to *get* a variable that doesn't exist
#macro CHATTERBOX_ERROR_REDECLARED_VARIABLE  true  //Throws an error when trying to redeclare a variable
#macro CHATTERBOX_ERROR_NO_LOCAL_SCOPE       true  //Throws an error when trying to execute a function without a local scope being available

// Value to return from a variable that doesn't exist
// This is only relevant if CHATTERBOX_ERROR_UNSET_VARIABLE is <false> and the "default" argument for ChatterboxVariableGet() has not been specified
#macro CHATTERBOX_VARIABLE_MISSING_VALUE  0

// 

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――


// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// ----------------------------------------------------------------------------
/// This is a wrapper around a chatterbox, basically a container for dialogue
/// processing.
/// ----------------------------------------------------------------------------
/// # execution_context
/// The object instance or struct that should be used as the this context when
/// executing YarnScript functions and commands.
///
/// NOTE: This property can't be changed once the Dialogue Runner has been created.
/// ----------------------------------------------------------------------------
/// # singleton
/// Whether the dialogue content is being processed in singleton mode.
/// This is equivalent to putting a 'wait' command after every line.
///
/// CHATTERBOX_SINGLETON_WAIT_BEFORE_OPTION
///
/// wait stop state
///
/// NOTE: This property can't be changed once the Dialogue Runner Runner has been created.
/// ----------------------------------------------------------------------------
/// # waiting
/// Whether the dialogue is in a 'waiting' state. This state is triggered due to
/// a 'wait' command, singleton mode.
///
/// NOTE: If 'CHATTERBOX_WAIT_BEFORE_STOP' is true the dialogue will go into a
/// 'waiting' state before being changed into a 'stopped' state by a <<stop>>
/// command if it wasn't already in a 'waiting' state.
///
/// NOTE: Dialogue Runner is not waiting when option needs to be chosen. CHATTERBOX_SINGLETON_WAIT_BEFORE_OPTION
///
/// NOTE: When stopped by GML 'stop' the 'waiting' state isn't changed.
/// ----------------------------------------------------------------------------
/// # stopped
/// Whether the dialogue is in a 'stopped' state. Instances of dialogue begin
/// in a 'stopped' state and go into a 'stopped' state whenever they are reset.
/// This state can be triggered by <<stop>> commands and 'yarnspinner_dialoguerunner_stop'.
/// This state is left by changing to a valid source/node.
///
/// NOTE: Nodes not explicitly terminated by a <<stop>> or <<hopback>> command
/// will be implicitly terminated by a <<stop>> or <<hopback>> command depending
/// on the value of CHATTERBOX_END_OF_NODE_HOPBACK.
export class DialogueRunner {

    this.node_exists                   = method(this, dialogue_node_exists)

    /// This function is used to check whether a node exists.
    /// ----------------------------------------------------------------------------
    /// @param {string} source
    /// The name of the source to check.
    ///
    /// @param {string} node
    /// The title of the node to check.
    /// @returns {Bool}
    function dialogue_node_exists(parameters = {}) {
        return ChatterboxSourceNodeExists(parameters.source, parameters.node)
    }

    this.get_node_count                = method(this, dialogue_get_node_count)

    /// This function is used to check how many nodes a source has.
    /// ----------------------------------------------------------------------------
    /// @param {string} source
    /// The name of the source to check.
    /// @returns {Real}
    function dialogue_get_node_count(parameters = {}) {
        return ChatterboxSourceNodeCount(parameters.source)
    }

    this.get_node_tags                 = method(this, dialogue_get_node_tags)
    this.get_node_metadata             = method(this, dialogue_get_node_metadata)

    /// This function is used to get the metadata of a node.
    /// ----------------------------------------------------------------------------
    /// @param {string} source
    /// The name of the source.
    /// @param {string} node
    /// The title of the node.
    /// @returns {Struct}
    function dialogue_get_node_metadata(parameters = {}) {
        return ChatterboxGetCurrentMetadata(chatterbox)
        return ChatterboxSourceGetNodeMetadata(sourceName, nodeTitle)
    }

    yarnspinner_dialoguerunner_node_get_metadata

    /// This function is used to get the number of lines of content currently
    /// available to a dialogue instance.
    /// ----------------------------------------------------------------------------
    /// @param {Struct} dialogue
    /// The dialogue instance to target.
    /// @returns {integer}
    this.get_linecount = function(parameters = {}) {
        if (!is_struct(parameters)) { parameters = {} }
        var _dialogue   = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
        if (!is_dialogue(_dialogue)) {
            return 0;
        }
        var _chatterbox = _dialogue.private.chatterbox
        return ChatterboxGetContentCount(_chatterbox)
    }

    this.get_line_speaker              = method(this, dialogue_get_line_speaker)

    /// 
    /// @param {type} parameter_name
    /// <parameter_description>
    /// @returns {string}
    function dialogue_get_line_speaker(parameters = {}) {
        if (!is_struct(parameters)) { parameters = {} }
        var _dialogue   = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
        if (!is_dialogue(_dialogue)) {
            return "";
        }
        var _chatterbox = _dialogue.private.chatterbox
        return ChatterboxGetContentSpeaker(private.chatterbox, _content_index, _default)
    }

    yarnspinner_dialoguerunner_line_get_speaker

    this.get_line_speaker_data         = method(this, dialogue_get_line_speaker_data)
    
    /// 
    /// @param {type} parameter_name
    /// <parameter_description>
    /// @returns {string}
    function dialogue_get_line_speaker_data(parameters = {}) {
        if (!is_struct(parameters)) { parameters = {} }
        var _dialogue   = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
        if (!is_dialogue(_dialogue)) {
            return "";
        }
        var _chatterbox = _dialogue.private.chatterbox
        return ChatterboxGetContentSpeakerData(private.chatterbox, _content_index, _default)
    }

    yarnspinner_dialoguerunner_line_get_speakerdata

    this.get_line_speech               = method(this, dialogue_get_line_speech)
    
    /// 
    /// @param {type} parameter_name
    /// <parameter_description>
    /// @returns {string}
    function dialogue_get_line_speech(parameters = {}) {
        if (!is_struct(parameters)) { parameters = {} }
        var _dialogue   = parameters["dialogue"] ?? is_dialogue(this) ? this : undefined
        if (!is_dialogue(_dialogue)) {
            return "";
        }
        var _chatterbox = _dialogue.private.chatterbox
        return ChatterboxGetContentSpeech(private.chatterbox, _content_index, _default)
    }

    yarnspinner_dialoguerunner_line_get_speech

    this.get_line_metadata             = method(this, dialogue_get_line_metadata)
    
    this.get_option_content            = method(this, dialogue_get_option_content)
    
    this.get_option_metadata           = method(this, dialogue_get_option_metadata)
    
    this.is_option_condition_satisfied = method(this, dialogue_is_option_condition_satisfied)
    
    this.get_option_chosen_count       = method(this, dialogue_get_option_chosen_count)
    
    this.get_option_count              = method(this, yarnspinner_dialoguerunner_get_optioncount)
    
    this.get_option_array              = method(this, dialogue_get_options)

    this.get_node_title                = method(this, dialogue_get_node_title)
    
    /// 
    /// @param {type} parameter_name
    /// <parameter_description>
    /// @returns {type}
    function dialogue_get_node_title(parameters = {}) {
        ChatterboxGetCurrent(chatterbox)
    }

    yarnspinner_dialoguerunner_node_get_title

    /// This function is used to make dialogue jump to a node in a source.
    ///
    /// NOTE: This function differs from a YarnScript <<jump>> command in that it
    /// restarts dialogue processing from the top of the new node. Any progress in
    /// previous nodes will be reset for this dialogue instance and it won't be
    /// possible to get dialogue content from the previous node in non 'singleton'
    /// mode.
    /// ----------------------------------------------------------------------------
    /// @param {type} dialogue
    /// The dialogue to target.
    /// @param {type} [source]
    /// The name of the source. Defaults to the current source.
    /// @param {string} node
    /// The title of the node to jump to.
    /// @returns {Struct.DialogueRunner}
    this.jump_to_node = function(parameters = {}) {
        var _dialogue    = parameters["dialogue"]
        var _chatterbox  = _dialogue.private.chatterbox
        var _source_name = parameters["source"]
        var _node_title  = parameters["node"]
        ChatterboxJump(_chatterbox, _node_title, _source_name);
        return _dialogue;
    };
    
    this.hop_to_node                   = method(this, dialogue_hop_to_node)
    
    this.hop_back                      = method(this, yarnspinner_dialoguerunner_hopback)
    
    this.select_option                 = method(this, dialogue_select_option)

    this.is_waiting                    = method(this, yarnspinner_dialoguerunner_is_waiting)
    /// This function is used to check if a dialogue is in a 'waiting' state.
    /// ----------------------------------------------------------------------------
    /// @param {Struct} dialogue
    /// The dialogue instance to check.
    /// @returns {Bool}
    function yarnspinner_dialoguerunner_is_waiting(parameters = {}) {
        var _dialogue = parameters["dialogue"]
        return ChatterboxIsWaiting(_dialogue.private.chatterbox)
    }

    this.wait = function(parameters = {}) {
        ChatterboxWait(this.private.chatterbox);
        return this;
    };

    this.resume                        = method(this, yarnspinner_dialoguerunner_continue)
    /// This function is used to advance processing of dialogue instances that are
    /// in a "waiting" state.
    /// ----------------------------------------------------------------------------
    /// @param {struct|Array<struct>} dialogue
    /// The dialogue instance or array of dialogue instances to target.
    /// @returns {Undefined}
    function yarnspinner_dialoguerunner_continue(parameters = {}) {
        /* ―――――――――――――――――――― ARGUMENTS ―――――――――――――――――――― */
        if (!is_struct(parameters)) { parameters = {} }
        var _dialogue = parameters["dialogue"] ?? is_dialogue(this) ? this : []
        if (!Array.isArray(_dialogue)) { _dialogue = [_dialogue] }
        /* ―――――――――――――――――――― LOGIC ―――――――――――――――――――― */
        for (let i = 0; i < _dialogue.length; i++) {
            if (!is_dialogue(_dialogue[i])) { continue }
            var _chatterbox = _dialogue[i].private.chatterbox
            ChatterboxContinue(_chatterbox)
        }
        return undefined
    }

    this.fast_foreward                 = method(this, yarnspinner_dialoguerunner_fastforeward)
    /// 
    /// @param {type} parameter_name
    /// <parameter_description>
    /// @returns {type}
    function yarnspinner_dialoguerunner_fastforeward(parameters = {}) {
        return ChatterboxFastForward(private.chatterbox)
    }

    this.is_stopped                    = method(this, yarnspinner_dialoguerunner_is_stopped)
    /// This function is used to check if a dialogue is in a 'stopped' state.
    /// ----------------------------------------------------------------------------
    /// @param {Struct} dialogue
    /// The dialogue instance to check.
    /// @returns {Bool}
    function yarnspinner_dialoguerunner_is_stopped(parameters = {}) {
        var _dialogue = parameters["dialogue"]
        ChatterboxIsStopped(_dialogue.private.chatterbox)
    }

    this.stop                          = method(this, yarnspinner_dialoguerunner_stop)
    /// 
    /// @param {type} dialogue
    /// <parameter_description>
    /// @returns {Undefined}
    function yarnspinner_dialoguerunner_stop(parameters = {}) {
        var _dialogue   = parameters["dialogue"]
        var _chatterbox = _dialogue.private.chatterbox
        return ChatterboxStop(_chatterbox)
    }

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
