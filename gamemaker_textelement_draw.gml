/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_textelement_draw(parameters = {}) {
    private.scribble_text_element.draw(parameters.x, parameters.y, parameters.typist)
    return _return
}