/// casts to Input Action
function gamemaker_inputaction(value) {
    return {};
}

/// Checks whether the verb is active; whether the verb is "active" i.e. a button is being held down, an analogue stick has been moved etc.
/// ---
/// `parameters.input` Verb to target
/// `parameters.player` Player to target. If not specified, player 0 is used
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_input_check(parameters) {
    var _active = InputCheck(parameters.input, parameters.player);
    return _active;
}

function input_check_all_pressed(_verb, _player_index, _buffer_duration) {
    for (var i = 0; i < (array_length(_verb)); i++) {
        if (!input_check_pressed(_verb[i], _player_index, _buffer_duration)) { return false }
    }
    return true
}

/// gamemaker_input_is_action_justpressed
/// Checks whether the targeted action has been newly actived this frame.
/// ---
/// `parameters.input` The input to target.
/// `parameters.player` The action to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_input_check_pressed(parameters) {
    var _pressed = InputPressed(parameters.input, parameters.player);
    return _pressed;
}

/// gamemaker_input_get_opposing_action_justpressed
/// ---
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {type}
function gamemaker_input_opposing_pressed(parameters) {
    return InputOpposingPressed(parameters.negative_input, parameters.positive_input, parameters.player, parameters.most_recent);
}

/// 
/// ---
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// @returns {type}
function gamemaker_input_verbcount(parameters = {}) {
    return InputVerbCount();
}

/// 
/// ---
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} command
/// @param {type} [player]
/// @returns {Undefined}
function gamemaker_input_verb_consume(parameters = {}) {
    var _verbindex = parameters.input;
    var _playerindex = parameters.player;
    InputVerbConsume(_verbindex, _playerindex);
    return undefined;
}

/// 
/// ---
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {string} input
/// @param {integer} player
/// @param {Bool} most_recent
/// @returns {string|undefined}
function gamemaker_input_get_exclusive_active_name(parameters) {
    return
}

/// 
/// ---
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {string|undefined}
function gamemaker_input_check_exclusive_pressed(parameters = {}) {
    return _return
}

/// 
/// ---
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {type}
gamemaker_input_get_held_duration = function(parameters) {

    if (parameters.units == "frames") {
        <statement>
    }

    return _return
}

/// 
/// ---
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
function gamemaker_input_check_opposing(parameters) {
    input_check_opposing(verbNegative, verbPositive, [playerIndex], [mostRecent])
    input_check_opposing_repeat(verbNegative, verbPositive, [playerIndex], [mostRecent], [delay], [predelay])
}

function gamemaker_input_export_system_data(parameters) {
    return input_system_export(parameters.stringify, parameters.prettify)
}

function gamemaker_input_import_system_data(parameters) {
    input_system_import(parameters.system_data)
}

function reset_system_config_input_generic(arguments = {}) {
    return INPUT_GENERIC.reset_system_config(arguments)
}

function gamemaker_input_system_serialize(parameters) {
    if (parameters.filepath) {

    }

    return
}

function gamemaker_input_system_deserialize(parameters) {
    if (parameters.filepath) {

    }

    return
}

function gamemaker_input_save_system_data_to_file() {
    if (!is_struct(arguments)) { return }

    var _filepath = arguments[$ "filepath"] ?? private.system_config.default_filepath
    if (!is_string(_filepath)) { return }

    //Export a nice readable string
    var _string = export_to_string_system_config({ prettify : arguments[$ "prettify"] })
    //Save the string into a buffer
    var _buffer = buffer_create(1024, buffer_grow, 1)
    buffer_write(_buffer, buffer_text, _string)
    //Save the buffer to disk
    buffer_save_ext(_buffer, _filepath, 0, buffer_tell(_buffer)) // "controls.json"
    //Clean up the buffer!
    buffer_delete(_buffer)
}

function gamemaker_input_load_system_data_from_file() {
    var _filepath = arguments[$ "filepath"] ?? private.system_config.default_filepath

    //Load up the Input data if it exists
    if (file_exists(_filepath)) { //
        //Load up a buffer and try to read Input data from it as a string
        var _buffer = buffer_load(_filepath)
        var _incoming_data = buffer_read(_buffer, buffer_text)
        //Always clean up your memory!
        buffer_delete(_buffer)
        //We failed to validate the controls so force a reset of the control scheme
        if (not input_system_verify(_incoming_data)) {
            show_notification("Couldn't load control settings!")
        //Otherwise load as planned
        } else {
            input_system_import(_incoming_data)
        }
    }
}

/// 
/// @param {Struct} default
/// @param {type} left
/// @param {type} right
/// @param {type} up
/// @param {type} down
/// @param {type} player
/// @param {type} most_recent
/// @returns {type}
function gamemaker_input_get_direction_degrees() {
    input_direction(default, verbLeft, verbRight, verbUp, verbDown, [playerIndex], [mostRecent])
}

#macro DEFAULT_FILEPATH_SYSTEM_CONFIG_INPUT_GENERIC "controls.json"

function InputControllerGeneric() constructor {

    static private = {
        system_config : {
            default_filepath : DEFAULT_FILEPATH_SYSTEM_CONFIG_INPUT_GENERIC,
        },
    }

}

function InputController() : InputControllerGeneric() constructor {

    static game_start_event = function() {
        import_system_config()
    }

}

/*

load_controls_config()

function scr_gamepad_axis_check(argument0, argument1)
{
    axis_value = 0.4
    __returnvalue = 0
    if (argument1 == 0)
    {
        if (gamepad_axis_value(argument0, gp_axislv) >= axis_value)
            __returnvalue = 1
    }
    if (argument1 == 1)
    {
        if (gamepad_axis_value(argument0, gp_axislh) >= axis_value)
            __returnvalue = 1
    }
    if (argument1 == 2)
    {
        if (gamepad_axis_value(argument0, gp_axislv) <= (-axis_value))
            __returnvalue = 1
    }
    if (argument1 == 3)
    {
        if (gamepad_axis_value(argument0, gp_axislh) <= (-axis_value))
            __returnvalue = 1
    }
    return __returnvalue;
}

function scr_gamepad_check_any()
{
    if (!instance_exists(obj_gamecontroller))
        return 0;
    else
    {
        var any_input = 0
        var i = 0
        while (i < 4)
        {
            if scr_gamepad_axis_check(obj_gamecontroller.gamepad_id, i)
            {
                any_input = 1
                break;
            }
            else
            {
                i += 1
                continue
            }
        }
        i = 0
        while (i < 10)
        {
            if gamepad_button_check(obj_gamecontroller.gamepad_id, global.legacy_input_gamepad[i])
            {
                any_input = 1
                break;
            }
            else
            {
                i += 1
                continue
            }
        }
    }
    return any_input;
}

function scr_gamepad_check_pressed_any()
{
    if (!instance_exists(obj_gamecontroller))
        return 0;
    else
    {
        var button_pressed = 0
        var i = 0
        while (i < 10)
        {
            if gamepad_button_check_pressed(obj_gamecontroller.gamepad_id, global.legacy_input_gamepad[i])
            {
                button_pressed = 1
                break;
            }
            else
            {
                i += 1
                continue
            }
        }
    }
    return button_pressed;
}


new InputController()

function InputController() : InputControllerGeneric() constructor {

    static game_start_event = function() {
        import_system_config()
    }

}

function input_check_all_pressed(_verb, _player_index, _buffer_duration) {
    for (var i = 0; i < (array_length(_verb)); i++) {
        if (!input_check_pressed(_verb[i], _player_index, _buffer_duration)) { return false }
    }
    return true
}

/*

load_controls_config()

function scr_gamepad_axis_check(argument0, argument1)
{
    axis_value = 0.4
    __returnvalue = 0
    if (argument1 == 0)
    {
        if (gamepad_axis_value(argument0, gp_axislv) >= axis_value)
            __returnvalue = 1
    }
    if (argument1 == 1)
    {
        if (gamepad_axis_value(argument0, gp_axislh) >= axis_value)
            __returnvalue = 1
    }
    if (argument1 == 2)
    {
        if (gamepad_axis_value(argument0, gp_axislv) <= (-axis_value))
            __returnvalue = 1
    }
    if (argument1 == 3)
    {
        if (gamepad_axis_value(argument0, gp_axislh) <= (-axis_value))
            __returnvalue = 1
    }
    return __returnvalue;
}

function scr_gamepad_check_any()
{
    if (!instance_exists(obj_gamecontroller))
        return 0;
    else
    {
        var any_input = 0
        var i = 0
        while (i < 4)
        {
            if scr_gamepad_axis_check(obj_gamecontroller.gamepad_id, i)
            {
                any_input = 1
                break;
            }
            else
            {
                i += 1
                continue
            }
        }
        i = 0
        while (i < 10)
        {
            if gamepad_button_check(obj_gamecontroller.gamepad_id, global.legacy_input_gamepad[i])
            {
                any_input = 1
                break;
            }
            else
            {
                i += 1
                continue
            }
        }
    }
    return any_input;
}

function scr_gamepad_check_pressed_any()
{
    if (!instance_exists(obj_gamecontroller))
        return 0;
    else
    {
        var button_pressed = 0
        var i = 0
        while (i < 10)
        {
            if gamepad_button_check_pressed(obj_gamecontroller.gamepad_id, global.legacy_input_gamepad[i])
            {
                button_pressed = 1
                break;
            }
            else
            {
                i += 1
                continue
            }
        }
    }
    return button_pressed;
}
