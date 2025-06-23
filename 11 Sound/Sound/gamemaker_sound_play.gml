/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} sound
/// <parameter_description>
/// @param {boolean} loop
/// <parameter_description>
/// @param {type} gain
/// <parameter_description>
/// @param {type} pitch
/// <parameter_description>
/// @param {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {struct}
/// ----------------------------------------------------------------------------
function gamemaker_sound_play(parameters = {}) {
    VinylPlay(sound, [loop], [gain=1], [pitch=1], [pan])
    VinylPlayFadeIn(sound, [loop], [targetGain=1], [rate=VINYL_DEFAULT_GAIN_RATE], [pitch=1])
    var _sound_instance = new SoundInstance()
    return _sound_instance
}
