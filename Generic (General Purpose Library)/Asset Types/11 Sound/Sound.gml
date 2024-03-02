/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#region    –––––––––––––––––––– SCRIPT_FUNCTIONS ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @function play_sound_generic(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {Struct} arguments
///
/// @parameter {Type} arguments.parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function play_sound_generic(arguments) {
    // FadeIn
    var _voice = VinylPlay(argument0)
    VinylPlay(sound, [loop], [gain=1], [pitch=1], [pan])
    VinylPlayFadeIn(sound, [loop], [targetGain=1], [rate=VINYL_DEFAULT_GAIN_RATE], [pitch=1])
    return SoundGeneric(_voice)
}

function fade_out_sound_generic(arguments) {

}

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#endregion –––––––––––––––––––– SCRIPT_FUNCTIONS ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#region    –––––––––––––––––––– REGION_NAME ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

/// @function exists_sound_generic(arguments)
/// @description
/// @parameter {Struct} arguments
/// @return {Bool|Array<Bool>}
function exists_sound_generic(arguments) {
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
        // SoundGeneric -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // GET
        return VinylPausedGet(arguments.target)
    }
}

/// @function stop_sound_generic(arguments)
function stop_sound_generic(arguments) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        for (var i = 0; i < array_length(arguments.target); i++) {
            var _value = unpause_sound_generic({ target : arguments.target[i] })
        }
    // SINGLE_TARGET
    } else {
        // SoundGeneric -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // SET
        if (arguments.target == all) {
            VinylStopAll()
        } else {
            VinylStop(arguments.target)
        }
    }
}

/// @function stop_callback_sound_generic(arguments)
function stop_callback_sound_generic(arguments) {
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
        // SoundGeneric -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        VinylStopCallbackSet(arguments.target)
        // GET
        return VinylStopCallbackGet(arguments.target)
    }
}

/// @function paused_sound_generic(arguments)
/// @description getter/setter for sound.paused
/// @parameter {Struct} arguments
/// @parameter {SoundGeneric|Array<SoundGeneric>|String|Array<String>} arguments.target
/// @parameter {Bool} arguments.value
/// @return {Bool|Array<Bool>}
function paused_sound_generic(arguments = {}) {
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
        // SoundGeneric -> Voice
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

/// @function looping_sound_generic(arguments)
/// @description getter/setter for sound.looping
/// @parameter {Struct} arguments
/// @parameter {SoundGeneric|Array<SoundGeneric>|String|Array<String>} arguments.target
/// @parameter {Bool} arguments.value
/// @return {Bool|Array<Bool>}
function looping_sound_generic(arguments = {}) {
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
        // SoundGeneric -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        if (struct_exists(arguments, "value")) { VinylLoopSet(arguments.target, arguments.value) }
        return VinylLoopGet(arguments.target)
    }
}

/// @function persistent_sound_generic(arguments)
/// @description getter/setter for sound.persistent
/// @parameter {Struct} arguments
/// @parameter {SoundGeneric|Array<SoundGeneric>|String|Array<String>} arguments.target
/// @parameter {Bool} arguments.value
/// @return {Bool|Array<Bool>}
function persistent_sound_generic(arguments = {}) {
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
        // SoundGeneric -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        if (struct_exists(arguments, "value")) { VinylPersistentSet(arguments.target, arguments.value) }
        return VinylPersistentGet(arguments.target)
    }
}

/// @function gain_sound_generic(arguments)
/// @description getter/setter for sound gain
/// @parameter {Struct} arguments
/// @parameter {SoundGeneric|Array<SoundGeneric>|String|Array<String>} arguments.target
/// @parameter {Real} arguments.value
/// @parameter {Real} arguments.duration_seconds
/// @return {Real|Array<Real>}
function gain_sound_generic(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (var i = 0; i < array_length(_targets); i++) {
            arguments.target = _targets[i]
            var _value = gain_sound_generic(arguments)
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundGeneric -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // SET
        if (struct_exists(arguments, "value")) {
            if (struct_exists(arguments, "duration_seconds")) {
                var _current_value = gain_sound_generic({ target : arguments.target })
                var _rate = abs((_current_value - arguments.value) / arguments.duration_seconds)
                VinylGainTargetSet(arguments.target, arguments.value, _rate)
            } else {
                VinylGainSet(arguments.target, arguments.value)
            }
        }
        // GET
        return VinylGainGet(arguments.target)
    }
}

/// @function pitch_sound_generic(arguments)
/// @description getter/setter for sound pitch
/// @parameter {Struct} arguments
/// @parameter {SoundGeneric|Array<SoundGeneric>|String|Array<String>} arguments.target
/// @parameter {Real} arguments.value
/// @parameter {Real} arguments.duration_seconds
/// @return {Real|Array<Real>}
function pitch_sound_generic(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (var i = 0; i < array_length(_targets); i++) {
            arguments.target = _targets[i]
            var _value = pitch_sound_generic(arguments)
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundGeneric -> Voice
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

/// @function playback_position_sound_generic(arguments)
/// @description getter/setter for sound pitch
/// @parameter {Struct} arguments
/// @parameter {SoundGeneric|Array<SoundGeneric>|String|Array<String>} arguments.target
/// @parameter {Real} arguments.value
/// @parameter {Real} arguments.duration_seconds
/// @return {Real|Array<Real>}
function playback_position_sound_generic(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (var i = 0; i < array_length(_targets); i++) {
            arguments.target = _targets[i]
            var _value = pitch_sound_generic(arguments)
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundGeneric -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // SET
        if (struct_exists(arguments, "value")) {
            VinylPositionSet(arguments.target, arguments.value)
        }
        // GET
        return VinylPositionGet(arguments.target)
    }
}

/// @function length_sound_generic(arguments)
/// @description getter/setter for sound pitch
/// @parameter {Struct} arguments
/// @parameter {SoundGeneric|Array<SoundGeneric>|String|Array<String>} arguments.target
/// @parameter {Real} arguments.value
/// @parameter {Real} arguments.duration_seconds
/// @return {Real|Array<Real>}
function length_sound_generic(arguments = {}) {
    // MULTI_TARGET
    if (is_array(arguments.target)) {
        var _targets = arguments.target
        var _return_values = []
        for (var i = 0; i < array_length(_targets); i++) {
            arguments.target = _targets[i]
            var _value = pitch_sound_generic(arguments)
            array_push(_return_values, _value)
        }
        return _return_values
    // SINGLE_TARGET
    } else {
        // SoundGeneric -> Voice
        if (is_struct(arguments.target)) { arguments.target = arguments.target.voice }
        // GET
        return VinylLengthGet(arguments.target)
    }
}


/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#endregion –––––––––––––––––––– REGION_NAME ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#region    –––––––––––––––––––– REGION_NAME ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

#macro resume_audio audio_controller.resume
#macro pause_audio audio_controller.pause
#macro stop_audio audio_controller.stop
#macro is_playing_audio audio_controller.is_playing
#macro loop_audio audio_controller.loop
#macro gain_audio audio_controller.gain
#macro pitch_audio audio_controller.pitch
#macro playback_position_audio audio_controller.playback_position
#macro length_audio audio_controller.playback_position

/*******************************************************************************
–––––––––––––––––––– AUDIO CONTROLLER ––––––––––––––––––––
*******************************************************************************/

function AudioController() constructor {

    /*******************************************************************************
    –––––––––––––––––––– PRIVATE ––––––––––––––––––––
    *******************************************************************************/

    private = {
        menu_music_asset : undefined,
        menu_music_instance : undefined,
    }

    /*******************************************************************************
    –––––––––––––––––––– PUBLIC ––––––––––––––––––––
    *******************************************************************************/

	// pitch_audio(play_sound_generic(
	// pitch_audio(gain_audio(play_sound_generic(

    /* –––––––––––––––––––– PLAY –––––––––––––––––––– */
    play = function(arguments = {}) {
		return audio_play_sound(argument0, 50, false);

        var parameters = {
            audio : arguments[$ "audio"] ?? -1,
            target : arguments[$ "target"] ?? "background_music",
            volume : arguments[$ "volume"] ?? 1,
            pitch : arguments[$ "pitch"] ?? 1,
        }

        if (parameters.audio > -1) {
            if (parameters.target == "background_music") {
                OVERWORLD_THEME_SOUND_INSTANCE = mus_loop_ext(SOUNDS[parameters.audio].get_filename(), parameters.volume, parameters.pitch)
            } else if (parameters.target == "menu_music") {
                with (AUDIO_CONTROLLER.private) {
                    menu_music_instance = mus_loop_ext(SOUNDS[parameters.audio].get_filename(), parameters.volume, parameters.pitch)
                }
            }
        }
    }

    /* –––––––––––––––––––– PAUSE –––––––––––––––––––– */
    pause = function(arguments = {}) {
	    audio_pause_sound(argument0)
		return
        var parameters = {
            target : arguments[$ "target"] ?? "background_music",
        }

        if (parameters.target == "background_music") {
            var _instance = OVERWORLD_THEME_SOUND_INSTANCE
            audio_pause_sound(_instance)
        }

    }

    /* –––––––––––––––––––– RESUME –––––––––––––––––––– */
    resume = function(arguments = {}) {
		audio_resume_sound(argument0)
		return

        var parameters = {
            target : arguments[$ "target"] ?? "background_music",
        }

        if (parameters.target == "background_music") {
            var _instance = OVERWORLD_THEME_SOUND_INSTANCE
            audio_resume_sound(_instance)
        }

    }

	stop = function(_instance) {
		if (_instance == all) { audio_stop_all(); return; }
		audio_stop_sound(_instance)
	}

	is_playing = function(argument0) {
		return audio_is_playing(argument0);
	}

	loop = function() {
		 return audio_play_sound(argument0, 50, true);
	}

	gain = function(argument0, argument1, argument2) {
		audio_sound_gain(argument0, argument1, ((argument2 * 1000) / fps))

		return -> audio_sound_gain
	}

	pitch = function(argument0, argument1, argument2 = 0) {
		audio_sound_pitch(argument0, argument1)
		return

		with (obj_lerppitch) {
			if (sndtarget == argument0) { instance_destroy() }
		}
		var pitchthing = instance_create(0, 0, obj_lerppitch)
		pitchthing.sndtarget = argument0
		pitchthing.targetpitch = argument1
		pitchthing.maxframes = argument2
		with (pitchthing)
		    event_user(0)
	}

	playback_position = function(_audio, _position) {
		if (_position != undefined) { VinylPositionSet() }
		return VinylPositionGet()
	}

	length = function(_audio) {
		return VinylLengthGet(_audio)
	}

	fade_out = function(_audio, _duration_steps) {

	}

}

function scr_music_mute()
{
    if (scr_debug() && keyboard_check_pressed(ord("M")) && ENCOUNTER_THEME_SOUND_INSTANCE.is_playing())
    {
        if (ENCOUNTER_THEME_SOUND_INSTANCE.is_playing())
            ENCOUNTER_THEME_SOUND_INSTANCE.pause()
        else
            ENCOUNTER_THEME_SOUND_INSTANCE.resume()
    }
}

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#endregion –––––––––––––––––––– REGION_NAME ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

function Sound() {

}

function SoundGeneric() {

    static stop = function() {

    }

    /// ----------------------------------------------------------------------------
    /// @function function_name(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @parameter {Struct} arguments
    ///
    /// @parameter {Type} arguments.sound
    /// <parameter_description>
    ///
    /// @parameter {Type} arguments.gain
    /// <parameter_description>
    ///
    /// @parameter {Type} arguments.pitch
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @return {Struct.SoundInstanceGeneric}
    /// The struct representing the created sound instance.
    /// ----------------------------------------------------------------------------
    static play = function(arguments) {
        return new SoundInstanceGeneric()
    }
}