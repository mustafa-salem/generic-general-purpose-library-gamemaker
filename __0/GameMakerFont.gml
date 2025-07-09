/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @param {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <description>
/// ----------------------------------------------------------------------------
function gamemaker_font(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @param {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <description>
/// ----------------------------------------------------------------------------
function gamemaker_font_create(parameters = {}) {
    /// font_add(name, size, bold, italic, first, last);
    /// font_add_sprite(spr, first, prop, sep);
    /// font_add_sprite_ext(spr, string_map, prop, sep);
    /// font_replace_sprite(ind, spr, first, prop, sep);
    /// font_replace_sprite_ext(font, spr, string_map, prop, sep);
    /// font_delete(ind);
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} font
/// <parameter_description>
/// @param {type} spr
/// <parameter_description>
/// @param {type} string_map
/// <parameter_description>
/// @param {type} proportional
/// <parameter_description>
/// @param {type} space
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_font_create(parameters = {}) {
    font_add_sprite(spr, first, prop, sep);
    font_add_sprite_ext(spr, string_map, prop, sep);
    font_replace_sprite(ind, spr, first, prop, sep);
    font_replace_sprite_ext(font, spr, string_map, prop, sep);
    return _return
}