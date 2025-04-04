/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// NOTE: `draw_rectangle`
/// ----------------------------------------------------------------------------
/// @parameter {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @parameter {type} parameters.name
/// <description>
/// ----------------------------------------------------------------------------
/// @returns {struct.GameMakerRectangleElement}
/// ----------------------------------------------------------------------------
function gamemaker_rectangleelement_create(parameters = {}) {
    return new GameMakerRectangleElement()
}