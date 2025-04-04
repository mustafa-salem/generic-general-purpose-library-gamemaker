/// ----------------------------------------------------------------------------
/// @function function_name(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to run a find and replace operation on source files
/// whenever they are loaded.
///
/// NOTE: This action SHOULD NOT be performed after YarnScript sources were loaded.
/// ----------------------------------------------------------------------------
/// @parameter {string} search
/// The string to seach for.
///
/// @parameter {string} replace
/// The string to replace it with.
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function dialogue_find_and_replace(parameters = {}) {
    ChatterboxAddFindReplace(parameters.search, parameters.replace)
    return undefined
}