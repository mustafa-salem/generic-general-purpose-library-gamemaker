/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @parameter {struct.GameMakerTextElement} parameters.textelement
/// The textelement to target.
/// ----------------------------------------------------------------------------
/// @returns {number}
/// ----------------------------------------------------------------------------
function gamemaker_textelement_get_pagecount(parameters = {}) {
    if (argument_count != 1) {
        throw new IllegalArgumentException("1 argument expected.")
    }
    if (not is_struct(parameters)) {
        throw new IllegalArgumentException("`parameters` must be a struct.")
    }
    if (not (struct_exists(parameters, "textelement") and is_struct(parameters.textelement) and is_instanceof(parameters.textelement, GameMakerTextElement))) {
        throw new IllegalArgumentException("`parameters.textelement` must be a struct that is an instance of `GameMakerTextElement`.")
    }
    var _textelement = parameters.textelement
    return _textelement.private.scribble_text_element.get_page_count()
}