/// ----------------------------------------------------------------------------
/// @function dialogue_export_variables(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get a JSON string containing a key-value pair for
/// each YarnScript variable and the number of times nodes were visited.
///
/// NOTE: YarnScript constants can't be exported.
/// ----------------------------------------------------------------------------
/// @returns {string}
/// ----------------------------------------------------------------------------
function dialogue_export_variables(parameters = {}) {
    return ChatterboxVariablesExport()
}