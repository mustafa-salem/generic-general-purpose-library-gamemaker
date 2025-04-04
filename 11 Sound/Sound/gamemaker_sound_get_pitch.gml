/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {number}
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