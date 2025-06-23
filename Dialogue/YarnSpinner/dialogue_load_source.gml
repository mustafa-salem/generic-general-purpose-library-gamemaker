/// ----------------------------------------------------------------------------
/// @function dialogue_load_source(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to load a YarnScript source from a file, string or
/// buffer.
/// ----------------------------------------------------------------------------
/// @param {string} name
/// The name that should be used to reference the source.
///
/// NOTE: When loading from a file this value will default to the filepath.
///
/// NOTE: When loading from a string or buffer this parameter is required.
///
/// NOTE: If you are using the name of an already existing source then this
/// action will enter any existing dialogue instances using that source into a
/// "stopped" state.
///
/// @param {string} filepath
/// The filepath to load the YarnScript source from.
///
/// NOTE: The filepath must be relative to CHATTERBOX_INCLUDED_FILES_SUBDIRECTORY.
///
/// @param {string} string
/// The string to load the YarnScript source from.
///
/// NOTE: The string must be correctly formatted as a .yarn file.
///
/// @param {type} buffer
/// The handle or index of the buffer to load the YarnScript source from.
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function dialogue_load_source(parameters = {}) {
    var _name     = parameters[$ "name"]
    var _filepath = parameters[$ "filepath"]
    var _string   = parameters[$ "string"]
    var _buffer   = parameters[$ "buffer"]

    // loads YarnScript from a file
    if (is_string(_filepath)) {
        ChatterboxLoadFromFile(_filepath, _name)
        return undefined
    }
    // loads YarnScript from a string
    if (is_string(_string)) {
        ChatterboxLoadFromString(_name, _string)
        return undefined
    }
    // loads YarnScript from a buffer
    if (is_numeric(_buffer) and buffer_exists(_buffer)) {
        ChatterboxLoadFromBuffer(_name, _buffer)
        return undefined
    }
}