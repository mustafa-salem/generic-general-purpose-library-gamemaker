/******************************************************************************/
#region    –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/******************************************************************************/

SOUND

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_sound_exists(parameters = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _return_values = []
        for (var i = 0; i < array_length(arguments.target); i++) {
            var _value = unpause_sound_generic({ target : arguments.target[i] })
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundInstance -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // GET
        return VinylPausedGet(arguments.target)
    }
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {struct|undefined}
/// ----------------------------------------------------------------------------
function gamemaker_sound_get() {

}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// @parameter {boolean} loop
/// <parameter_description>
/// @parameter {type} gain
/// <parameter_description>
/// @parameter {type} pitch
/// <parameter_description>
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {struct}
/// ----------------------------------------------------------------------------
function gamemaker_sound_play(parameters = {}) {
    VinylPlay(sound, [loop], [gain=1], [pitch=1], [pan])
    VinylPlayFadeIn(sound, [loop], [targetGain=1], [rate=VINYL_DEFAULT_GAIN_RATE], [pitch=1])
    var _sound_instance = new SoundInstance()
    return _sound_instance
}

/// ----------------------------------------------------------------------------
/// @description
/// This function is used to check if a sound is currently playing.
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_sound_is_playing(parameters = {}) {
    return VinylPausedGet(parameters.sound)
}

/// ----------------------------------------------------------------------------
/// @description
/// 
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {boolean}
/// ----------------------------------------------------------------------------
function sound_is_paused(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _return_values = []
        for (var i = 0; i < array_length(arguments.target); i++) {
            var _value = unpause_sound_generic({ target : arguments.target[i] })
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundInstance -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // SET
        if (struct_exists(arguments, "value")) {
            if (arguments.value) { VinylPause(arguments.target) }
            else { VinylResume(arguments.target) }
        }
        // GET
        return VinylPausedGet(arguments.target)
    }
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_sound_pause(parameters = {}) {
    VinylSetPause(_voice, true)
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_sound_resume(arguments) {
    VinylSetPause(_voice, false)
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_sound_stop(parameters = {}) {
    var _sound = parameters[$ "sound"]

    for (var i = 0; i < array_length(_sound); i++) {
        if (_sound[i] == all) {
            audio_stop_all()
            continue
        }
    }

    audio_stop_sound(_instance)
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        for (var i = 0; i < array_length(arguments.target); i++) {
            var _value = unpause_sound_generic({ target : arguments.target[i] })
        }
    // SINGLE_TARGET
    } else {
        // SoundInstance -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // SET
        if (arguments.target == all) {
            VinylStopAll()
        } else {
            VinylStop(arguments.target)
        }
    }
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// @parameter {type} duration_seconds
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_sound_fadeout(parameters = {}) {
    VinylFadeOut(target, [rate=VINYL_DEFAULT_GAIN_RATE])
}

/// ----------------------------------------------------------------------------
/// @description
/// whether a voice is in “shutdown mode”
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_sound_is_shutdown(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function sound_set_stop_callback(arguments) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _return_values = []
        for (var i = 0; i < array_length(arguments.target); i++) {
            var _value = unpause_sound_generic({ target : arguments.target[i] })
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundInstance -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        VinylStopCallbackSet(arguments.target)
        // GET
        return VinylStopCallbackGet(arguments.target)
    }
    return undefined
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {number}
/// ----------------------------------------------------------------------------
function gamemaker_sound_get_gain(arguments) {

}

/// ----------------------------------------------------------------------------
/// @description
/// This function is used to set the gain of sound instances.
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// The sound instances to affect.
/// @parameter {number} gain
/// The gain to target. Must be between 0 and 1.
/// @parameter {number} [duration_seconds=0]
/// The amount of seconds to reach the target.
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_sound_set_gain(parameters = {}) {
    /// -> VinylSetGain
    return undefined
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {number}
/// ----------------------------------------------------------------------------
function gamemaker_sound_get_pitch(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (var i = 0; i < array_length(_targets); i++) {
            arguments.target = _targets[i]
            var _value = gamemaker_sound_get_pitch(arguments)
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundInstance -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // SET
        if (struct_exists(arguments, "value")) {
            if (struct_exists(arguments, "duration_seconds")) {
                var _current_value = gain_sound_generic({ target : arguments.target })
                var _rate = abs((_current_value - arguments.value) / arguments.duration_seconds)
                VinylPitchTargetSet(arguments.target, arguments.value, _rate)
            } else {
                VinylPitchSet(arguments.target, arguments.value)
            }
        }
        // GET
        return VinylPitchGet(arguments.target)
    }
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} sound
/// <parameter_description>
/// @parameter {type} pitch
/// <parameter_description>
/// @parameter {type} duration_seconds
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_sound_set_pitch(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_sound_set_looping(arguments = {}) {
    return VinylGetLoop(_voice)
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_sound_is_looping(arguments = {}) {
    return VinylGetLoop(_voice)
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_sound_set_persistent(arguments = {}) {
    return VinylGetLoop(_voice)
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_sound_is_persistent(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _return_values = []
        for (var i = 0; i < array_length(arguments.target); i++) {
            var _value = unpause_sound_generic({ target : arguments.target[i] })
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundInstance -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        if (struct_exists(arguments, "value")) { VinylPersistentSet(arguments.target, arguments.value) }
        return VinylPersistentGet(arguments.target)
    }
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {number}
/// ----------------------------------------------------------------------------
function gamemaker_sound_get_length(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (var i = 0; i < array_length(_targets); i++) {
            arguments.target = _targets[i]
            var _value = gamemaker_sound_get_length(arguments)
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundInstance -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // GET
        return VinylLengthGet(arguments.target)
    }
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {number}
/// ----------------------------------------------------------------------------
function gamemaker_sound_get_track_position(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (var i = 0; i < array_length(_targets); i++) {
            arguments.target = _targets[i]
            var _value = gamemaker_sound_get_track_position(arguments)
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundInstance -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // SET
        if (struct_exists(arguments, "value")) {
            VinylPositionSet(arguments.target, arguments.value)
        }
        // GET
        return VinylPositionGet(arguments.target)
    }
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_sound_set_track_position(parameters = {}) {
    return _return
}

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/

function Sound() constructor {

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/
