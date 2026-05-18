/*
.pause()
.resume()
.stop()
.fade_out({ duration_frames : })
.is_playing
.is_paused
.get_track_position
.get_track_position_seconds
.set_track_position
.get_track_length
*/

/// <function_description>
/// @param {type} sound <parameter_description>
/// @returns {Struct|Undefined}
function gamemaker_sound() {

}

/// <function_description>
/// @param {type} sound <parameter_description>
/// @returns {Bool}
function gamemaker_sound_exists(parameters = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _return_values = []
        for (let i = 0; i < array_length(arguments.target); i++) {
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

/// Plays any sound asset using any combination of parameters.
/// ---
/// `parameters.sound` (Sound Asset or Audio Queue ID, required)
/// `parameters.priority` (Real, optional), defaults to 0
/// `parameters.loop` (Boolean, optional), defaults to false
/// `parameters.gain` (Real, optional), defaults to 1.0
/// `parameters.pitch` (Real, optional), defaults to 1.0
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Struct}
function gamemaker_sound_play(parameters) {
    VinylPlay(sound, [loop], [gain=1], [pitch=1], [pan])
    VinylPlayFadeIn(sound, [loop], [targetGain=1], [rate=VINYL_DEFAULT_GAIN_RATE], [pitch=1])
    var _sound_instance = new SoundInstance()
    return _sound_instance
}

/// 
/// @param {type} sound <parameter_description>
/// @returns {Bool}
function gamemaker_sound_is_paused(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _return_values = []
        for (let i = 0; i < array_length(arguments.target); i++) {
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

/// <function_description>
/// @param {type} sound <parameter_description>
/// @returns {Undefined}
function gamemaker_sound_pause(parameters = {}) {
    VinylSetPause(_voice, true)
}

/// This function is used to check if a sound is currently playing.
/// @param {type} sound <parameter_description>
/// @returns {Bool}
function gamemaker_sound_is_playing(parameters = {}) {
    return VinylPausedGet(parameters.sound)
}

/// <function_description>
/// @param {type} sound <parameter_description>
/// @returns {Undefined}
function gamemaker_sound_resume(arguments) {
    VinylSetPause(_voice, false)
}

/// whether a voice is in “shutdown mode”
/// @param {type} parameter_name <parameter_description>
/// @returns {Bool}
function gamemaker_sound_is_shutdown(parameters = {}) {
    return _return
}

/// <function_description>
/// @param {type} sound <parameter_description>
/// @returns {Undefined}
function gamemaker_sound_stop(parameters = {}) {
    var _sound = parameters[$ "sound"]

    for (let i = 0; i < array_length(_sound); i++) {
        if (_sound[i] == all) {
            audio_stop_all()
            continue
        }
    }

    audio_stop_sound(_instance)
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        for (let i = 0; i < array_length(arguments.target); i++) {
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

/// <function_description>
/// @param {type} parameter_name <parameter_description>
/// @returns {Undefined}
function gamemaker_sound_set_stop_callback(arguments) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _return_values = []
        for (let i = 0; i < array_length(arguments.target); i++) {
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

/// <function_description>
/// @param {type} parameter_name <parameter_description>
/// @returns {Real}
function gamemaker_sound_get_length(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (let i = 0; i < array_length(_targets); i++) {
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

/// <function_description>
/// @param {type} parameter_name <parameter_description>
/// @returns {Real}
function gamemaker_sound_get_track_position(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (let i = 0; i < array_length(_targets); i++) {
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

/// <function_description>
/// @param {type} parameter_name <parameter_description>
/// @returns {Undefined}
function gamemaker_sound_set_track_position(parameters = {}) {
    return _return
}

/// <function_description>
/// @param {type} parameter_name <parameter_description>
/// @returns {Bool}
function gamemaker_sound_is_looping(arguments = {}) {
    return VinylGetLoop(_voice)
}

/// <function_description>
/// @param {type} parameter_name <parameter_description>
/// @returns {Undefined}
function gamemaker_sound_set_looping(arguments = {}) {
    return VinylGetLoop(_voice)
}

/// <function_description>
/// @param {type} sound <parameter_description>
/// @returns {Real}
function gamemaker_sound_get_gain(arguments) {

}

/// This function is used to set the gain of sound instances.
/// @param {type} sound
/// The sound instances to affect.
/// @param {Real} gain
/// The gain to target. Must be between 0 and 1.
/// @param {Real} [duration_seconds=0]
/// The amount of seconds to reach the target.
/// @returns {Undefined}
function gamemaker_sound_set_gain(parameters = {}) {
    /// -> VinylSetGain
    return undefined
}

/// <function_description>
/// @param {type} sound <parameter_description>
/// @param {type} duration_seconds <parameter_description>
/// @returns {Undefined}
function gamemaker_sound_fadeout(parameters = {}) {
    VinylFadeOut(target, [rate=VINYL_DEFAULT_GAIN_RATE])
}

/// <function_description>
/// @param {type} parameter_name <parameter_description>
/// @returns {Real}
function gamemaker_sound_get_pitch(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (let i = 0; i < array_length(_targets); i++) {
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
                var _current_value = gamemaker_sound_get_gain({ sound: arguments.target })
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

/// <function_description>
/// @param {type} sound <parameter_description>
/// @param {type} pitch <parameter_description>
/// @param {type} duration_seconds <parameter_description>
/// @returns {Undefined}
function gamemaker_sound_set_pitch(parameters = {}) {
    return _return
}

/// <function_description>
/// @param {type} parameter_name <parameter_description>
/// @returns {Bool}
function gamemaker_sound_is_persistent(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _return_values = []
        for (let i = 0; i < array_length(arguments.target); i++) {
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

/// <function_description>
/// @param {type} parameter_name <parameter_description>
/// @returns {Undefined}
function gamemaker_sound_set_persistent(arguments = {}) {
    return VinylGetLoop(_voice)
}