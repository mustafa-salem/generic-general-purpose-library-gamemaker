/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} command
/// <parameter_description>
/// @param {type} [player]
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_input_verb_consume(parameters = {}) {
    var _verbindex = parameters.input;
    var _playerindex = parameters.player;
    InputVerbConsume(_verbindex, _playerindex);
    return undefined;
}