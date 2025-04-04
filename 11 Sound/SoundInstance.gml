/******************************************************************************/
#region    –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/

function SoundInstance() constructor {

    voice = function(arguments = {}) {
        if (arguments.value) { private.voice = arguments.value }
        return private.voice
    }

    exists = function(arguments = {}) {
        arguments.target = self
        return gamemaker_sound_exists(arguments)
    }

    stop = function(arguments = {}) {
        arguments.target = self
        gamemaker_sound_stop(arguments)
    }

    stop_callback = function(arguments = {}) {
        arguments.target = self
        return sound_set_stop_callback(arguments)
    }

    paused = function(arguments = {}) {
        arguments.target = self
        return gamemaker_sound_is_paused(arguments)
    }

    looping = function(arguments = {}) {
        arguments.target = self
        return gamemaker_sound_is_looping(arguments)
    }

    persistent = function(arguments = {}) {
        arguments.target = self
        return gamemaker_sound_is_persistent(arguments)
    }

    gain = function(arguments = {}) {
        arguments.target = self
        return gain_sound_generic(arguments)
    }

    pitch = function(arguments = {}) {
        arguments.target = self
        return gamemaker_sound_get_pitch(arguments)
    }

    length = function(arguments = {}) {
        arguments.target = self
        return gamemaker_sound_get_length(arguments)
    }

    playback_position = function(arguments = {}) {
        arguments.target = self
        return gamemaker_sound_get_track_position(arguments)
    }

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/
