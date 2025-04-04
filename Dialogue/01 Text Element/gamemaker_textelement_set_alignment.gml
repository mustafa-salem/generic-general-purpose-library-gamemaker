/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_textelement_set_alignment(parameters = {}) {
    if (parameters[$ "x"] != undefined) { private.alignment.x = parameters.x }
    if (parameters[$ "y"] != undefined) { private.alignment.y = parameters.y }
    private.scribble_text_element.align(private.alignment.x, private.alignment.y)
    return _return
}