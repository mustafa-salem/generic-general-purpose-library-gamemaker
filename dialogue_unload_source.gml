/// ----------------------------------------------------------------------------
/// @function dialogue_unload_source(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to unload YarnScript sources from memory.
///
/// NOTE: This action will enter any existing dialogue instances using those
/// source into a "stopped" state.
/// ----------------------------------------------------------------------------
/// @param {string|array<string>} source
/// The name or the array of names of the sources to unload.
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function dialogue_unload_source(parameters = {}) {
    var _names = parameters[$ "source"]
    if (!is_array(_names)) { _names = [_names] }
    for (var i = 0; i < array_length(_names); i++) {
        if (!is_string(_names[i])) { continue }
        ChatterboxUnload(_names[i])
    }
    return undefined
}