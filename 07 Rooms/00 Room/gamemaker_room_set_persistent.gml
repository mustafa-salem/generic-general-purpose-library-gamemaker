/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} room
/// <parameter_description>
/// @param {boolean} persistent
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
