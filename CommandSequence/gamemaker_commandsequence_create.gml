/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @returns {struct.GameMakerCommandSequence}
/// ----------------------------------------------------------------------------
function gamemaker_commandsequence_create(parameters) {
    var _cutscene_master = gamemaker_object_instance_create(0, 0, cutscene_object)
    _cutscene_master.cutscene_object = id
    return _cutscene_master;
}