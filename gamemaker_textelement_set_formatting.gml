/// ----------------------------------------------------------------------------
/// @description
/// This function is used to set the original font and colour of the textelement.
/// 
/// NOTE: Using `[/font]` and `[/colour]` will change the font and colour back
/// to these values
/// ----------------------------------------------------------------------------
/// @param {struct.GameMakerTextElement} textelement
/// <parameter_description>
/// @param {type} font
/// <parameter_description>
/// @param {type} colour
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_textelement_set_formatting(parameters = {}) {
    var _font_name = arguments[$ "font"]   ?? private.default_format.font_name
    var _colour    = arguments[$ "colour"] ?? private.default_format.colour
    if (!is_string(_font_name)) { font_get_name(_font_name) }
    private.default_format.font_name = _font_name
    private.default_format.colour    = _colour
    private.scribble_text_element.starting_format(_font_name, _colour)
    return undefined
}