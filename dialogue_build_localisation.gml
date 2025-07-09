/// ----------------------------------------------------------------------------
/// @function dialogue_build_localisation(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// Parses an array of YarnScript files stored in your project's Included Filess directory and
/// creates a CSV that contains all strings in those source files. The YarnScript files are modified
/// by this function such that they link up to the CSV. You should then create a copy of the CSV
/// file for each language you're localising into and load then using ChatterboxLocalizationLoad()
/// when you wish to localise Chatterbox text into a different language.
///
/// WARNING: THIS FUNCTION WILL MODIFY SOURCE FILES ON DISK INSIDE YOUR PROJECT
/// ENSURE YOU HAVE BACKED UP YOUR WORK IN SOURCE CONTROL.
///
/// ----------------------------------------------------------------------------
/// @param {string|array<string>} source_filepath
/// The filepath or array of filepaths of the source files for which to create
/// a localisation.
///
/// NOTE: This filepath must be relative to CHATTERBOX_INCLUDED_FILES_SUBDIRECTORY.
///
/// @param {string|array<string>} localisation_filepath
/// The filepath or array of filepaths where to create localisation files.
///
/// NOTE: This filepath must be relative to CHATTERBOX_INCLUDED_FILES_SUBDIRECTORY.
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function dialogue_build_localisation(parameters) {
    if (!is_struct(parameters)) { parameters = {} }
    var _source_filepath       = parameters[$ "source_filepath"]
    var _localisation_filepath = parameters[$ "localisation_filepath"]
    ChatterboxLocalizationBuild(_source_filepath, _localisation_filepath)
    return undefined
}