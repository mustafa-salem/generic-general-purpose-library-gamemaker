/// ----------------------------------------------------------------------------
/// @function dialogue_is_loaded_source(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to check if a source is loaded to memory.
/// ----------------------------------------------------------------------------
/// @param {string} source
/// The name of the source to check.
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function dialogue_is_loaded_source(parameters = {}) {
    var _name = parameters[$ "source"]
    return ChatterboxIsLoaded(_name)
}