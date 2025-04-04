/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} font
/// <parameter_description>
/// @parameter {type} spr
/// <parameter_description>
/// @parameter {type} string_map
/// <parameter_description>
/// @parameter {type} proportional
/// <parameter_description>
/// @parameter {type} space
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_font_set_sprite(parameters = {}) {
    font_add_sprite(spr, first, prop, sep);
    font_add_sprite_ext(spr, string_map, prop, sep);
    font_replace_sprite(ind, spr, first, prop, sep);
    font_replace_sprite_ext(font, spr, string_map, prop, sep);
    return _return
}