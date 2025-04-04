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
/// @returns {struct}
/// ----------------------------------------------------------------------------
function gamemaker_sound_play(parameters = {}) {
    VinylPlay(sound, [loop], [gain=1], [pitch=1], [pan])
    VinylPlayFadeIn(sound, [loop], [targetGain=1], [rate=VINYL_DEFAULT_GAIN_RATE], [pitch=1])
    var _sound_instance = new SoundInstance()
    return _sound_instance
}
