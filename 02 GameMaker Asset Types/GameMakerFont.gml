// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// description
/// ---
/// description
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {type}
function gamemaker_font(parameters) {
    return _return
}

/// description
/// ---
/// description
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {type}
function gamemaker_font_create(parameters) {
    /// font_add(name, size, bold, italic, first, last);
    /// font_add_sprite(spr, first, prop, sep);
    /// font_add_sprite_ext(spr, string_map, prop, sep);
    /// font_replace_sprite(ind, spr, first, prop, sep);
    /// font_replace_sprite_ext(font, spr, string_map, prop, sep);
    /// font_delete(ind);
    return _return
}

/// description
/// ---
/// font
/// spr
/// string_map
/// proportional
/// space
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {type}
function gamemaker_font_create(parameters) {
    font_add_sprite(spr, first, prop, sep);
    font_add_sprite_ext(spr, string_map, prop, sep);
    font_replace_sprite(ind, spr, first, prop, sep);
    font_replace_sprite_ext(font, spr, string_map, prop, sep);
    return _return
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――