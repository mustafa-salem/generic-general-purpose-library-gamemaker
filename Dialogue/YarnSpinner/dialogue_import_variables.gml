/// ----------------------------------------------------------------------------
/// @function dialogue_import_variables(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to set YarnScript variables based on the data of a
/// JSON string created by "dialogue_export_variables".
///
/// NOTE: YarnScript constants can't be imported.
///
/// NOTE: YarnScript variables not presented in the JSON string will be reset to
/// their default value or deleted if they don't have a default value.
/// ----------------------------------------------------------------------------
/// @parameter {string} string
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function dialogue_import_variables(parameters = {}) {
    var _string = parameters[$ "string"]
    ChatterboxVariablesImport(_string)
    return undefined
}
