/// ----------------------------------------------------------------------------
/// @description
/// This function is used to check if a sound is currently playing.
/// ----------------------------------------------------------------------------
/// @param {type} sound
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_sound_is_playing(parameters = {}) {
    return VinylPausedGet(parameters.sound)
}
