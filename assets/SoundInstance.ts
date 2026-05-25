/*
.pause()
.resume()
.stop()
.fade_out({ duration_frames : })
.is_playing
.get_track_position
.get_track_position_seconds
.set_track_position
.get_track_length
*/



/**
 * 
 */
function gamemaker_sound_pause(parameters = {}): void {
    VinylSetPause(_voice, true)
}

/**
 * This function is used to check if a sound is currently playing.
 */
function gamemaker_sound_is_playing(parameters = {}): boolean {
    return VinylPausedGet(parameters.sound)
}

/**
 * 
 */
function gamemaker_sound_resume(arguments): void {
    VinylSetPause(_voice, false)
}

/**
 * whether a voice is in "shutdown mode"
 */
function gamemaker_sound_is_shutdown(parameters = {}): boolean {
    return _return
}

/**
 * 
 */
function gamemaker_sound_stop(parameters = {}): void {
    var _sound = parameters["sound"]

    for (let i = 0; i < _sound.length; i++) {
        if (_sound[i] == all) {
            audio_stop_all()
            continue
        }
    }

    audio_stop_sound(_instance)
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        for (let i = 0; i < arguments.target.length; i++) {
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

/**
 * 
 */
function gamemaker_sound_set_stop_callback(arguments): void {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _return_values = []
        for (let i = 0; i < arguments.target.length; i++) {
            var _value = unpause_sound_generic({ target : arguments.target[i] })
            _return_values.push(_value)
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

/**
 * 
 */
function gamemaker_sound_get_length(arguments = {}): number {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (let i = 0; i < _targets.length; i++) {
            arguments.target = _targets[i]
            var _value = gamemaker_sound_get_length(arguments)
            _return_values.push(_value)
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

/**
 * 
 */
function gamemaker_sound_get_track_position(arguments = {}): number {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (let i = 0; i < _targets.length; i++) {
            arguments.target = _targets[i]
            var _value = gamemaker_sound_get_track_position(arguments)
            _return_values.push(_value)
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

/**
 * 
 */
function gamemaker_sound_set_track_position(parameters = {}): void {
    return _return
}

/**
 * 
 */
function gamemaker_sound_set_looping(arguments = {}): void {
    return VinylGetLoop(_voice)
}

function gamemaker_sound_set_gain(parameters = {}): void {
    /// -> VinylSetGain
    return undefined
}

/**
 * 
 */
function gamemaker_sound_fadeout(parameters = {}): void {
    VinylFadeOut(target, [rate=VINYL_DEFAULT_GAIN_RATE])
}

/**
 * 
 */
function gamemaker_sound_set_pitch(parameters = {}): void {

}

export class SoundInstance {

    #voice = null;

    public voice() {
        // if (arguments.value) { private.voice = arguments.value }
        return this.#voice;
    }

    /**
     * 
     */
    public exists(): boolean {
        // MULTI_TARGET
        if (is_array(arguments.target)) {
            var _return_values = []
            for (let i = 0; i < arguments.target.length; i++) {
                var _value = unpause_sound_generic({ target : arguments.target[i] })
                _return_values.push(_value)
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

    public stop() {
        gamemaker_sound_stop(arguments);
    }

    public stop_callback() {
        return gamemaker_sound_set_stop_callback(arguments);
    }

    /**
     * 
     */
    public paused() {
        // MULTI_TARGET
        if (is_array(arguments.target)) {
            var _return_values = []
            for (let i = 0; i < arguments.target.length; i++) {
                var _value = unpause_sound_generic({ target : arguments.target[i] })
                _return_values.push(_value)
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

    /**
     * 
     */
    get looping(): boolean {
        return VinylGetLoop(_voice);
    }

    /**
     * 
     */
    public persistent() {
        // MULTI_TARGET
        if (is_array(arguments.target)) {
            var _return_values = []
            for (let i = 0; i < arguments.target.length; i++) {
                var _value = unpause_sound_generic({ target : arguments.target[i] })
                _return_values.push(_value)
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

    /**
     * This function is used to set the gain of sound instances.
     * sound - The sound instances to affect.
     * gain - The gain to target. Must be between 0 and 1.
     * duration_seconds=0 - The amount of seconds to reach the target.
     */
    public gain() {
        return gamemaker_sound_get_gain(arguments);
    }

    /**
     * 
     */
    public pitch() {
        // MULTI_TARGET
        if (is_array(arguments.target)) {
            var _targets = arguments.target
            var _return_values = []
            for (let i = 0; i < _targets.length; i++) {
                arguments.target = _targets[i]
                var _value = gamemaker_sound_get_pitch(arguments)
                _return_values.push(_value)
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
                    var _rate = Math.abs((_current_value - arguments.value) / arguments.duration_seconds)
                    VinylPitchTargetSet(arguments.target, arguments.value, _rate)
                } else {
                    VinylPitchSet(arguments.target, arguments.value)
                }
            }
            // GET
            return VinylPitchGet(arguments.target)
        }
    }

    public length() {
        return gamemaker_sound_get_length(arguments);
    }

    public playback_position() {
        return gamemaker_sound_get_track_position(arguments);
    }

}