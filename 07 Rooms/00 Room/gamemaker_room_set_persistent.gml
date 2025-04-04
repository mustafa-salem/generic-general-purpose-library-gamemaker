/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} room
/// <parameter_description>
/// @parameter {boolean} persistent
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_room_set_persistent(parameters = {}) {
    var _room       = parameters[$ "room"]
    var _persistent = parameters[$ "persistent"]
    if (_room == room) {
        room_persistent = _persistent
    } else {
        room_set_persistent(_room, _persistent)
    }
    return undefined
}
