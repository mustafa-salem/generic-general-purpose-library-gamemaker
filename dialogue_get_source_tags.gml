/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the tags associated with a source.
/// ----------------------------------------------------------------------------
/// @param {string} source
/// The name of the source to target.
/// ----------------------------------------------------------------------------
/// @returns {array<string>}
/// ----------------------------------------------------------------------------
function dialogue_get_source_tags(parameters = {}) {
    return ChatterboxSourceGetTags(sourceName)
}