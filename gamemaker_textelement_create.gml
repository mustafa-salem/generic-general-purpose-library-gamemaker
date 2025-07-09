/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {string} string
/// <parameter_description>
/// @param {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {struct.GameMakerTextElement}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_textelement_create(parameters = {}) {
    /// scribble(string, [uniqueID])
    return new GameMakerTextElement(parameters)
}