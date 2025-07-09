/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {integer} x_dimension
/// <parameter_description>
///
/// @param {integer} y_dimension
/// <parameter_description>
///
/// @param {constant} [format]
/// <parameter_description>
///
/// @param {boolean} [garbage_collection]
/// Whether to garbage collect the native surface when the struct is garbage
/// collected.
///
/// @param {boolean} [existance_ensureance]
/// Whether to ensure that the native surface exists when trying to perform a
/// operation on it.
///
/// NOTE: `surface_create`, `surface_create_ext`
/// ----------------------------------------------------------------------------
/// @returns {struct.GameMakerSurface}
/// ----------------------------------------------------------------------------
function gamemaker_surface_create(parameters) {
    var _x_dimension          = parameters[$ "x_dimension"]
    var _y_dimension          = parameters[$ "y_dimension"]
    var _format               = parameters[$ "format"]               ?? SURFACE_DEFAULT_FORMAT
    var _garbage_collection   = parameters[$ "garbage_collection"]   ?? SURFACE_DEFAULT_GARBAGE_COLLECTION
    var _existance_ensureance = parameters[$ "existance_ensureance"] ?? SURFACE_DEFAULT_EXISTANCE_ENSURANCE
    surface_create(_x_dimension, _y_dimension, _format)

    return new GameMakerSurface()
}