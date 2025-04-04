/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the instance of `GameMakerRoom` associated with
/// a room asset
///
/// NOTE: If the room doesn't exist this function returns `undefined`.
/// ----------------------------------------------------------------------------
/// @parameter {string|Asset.GMRoom|struct.GameMakerRoom} room
/// room name, room handle, room struct
/// ----------------------------------------------------------------------------
/// @returns {struct.GameMakerRoom|undefined}
/// ----------------------------------------------------------------------------
function gamemaker_room_get(parameters = {}) {
    var _room = parameters.room
    /// is a room name
    if (is_string(_room)) {
        GameMakerRoom.private.rooms[$ "name"]
    }
    /// is a room handle
    if (is_handle(_room)) {
        GameMakerRoom.private.rooms[$ "name"]
    }
    /// is an instance of `GameMakerRoom`
    if (is_instanceof(_room, GameMakerRoom)) {
        return _room
    }    
    return undefined
}