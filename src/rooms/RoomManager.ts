export class RoomManager {

    static #currentRoom: object | null = null;

    public static get currentRoom(): object | null {
        return this.#currentRoom;
    }

    public static createRoom() {

    }

}

/// Creates a new, empty, room and adds it permanently to the game (until the executable is closed).
/// **NOTE:** New rooms are not part of usual room ordering.
/// ---
/// `[parameters.name]` The name of the room.
/// @param {Struct} [parameters]
/// @returns {Struct.GameMakerRoom|Undefined}
function gamemaker_room_create(parameters = {}) {
    /// Guard Clauses
    if (argument_count != 1) {
        throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
    }
    if (typeof(parameters) != "struct") {
        throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
    }
    if (!struct_exists(parameters, "room")) {
        throw new InvalidArgumentException("'parameters.room' must be passed.");
    }
    /// Main Functionality
    var _name = parameters.name;
    var _handle = room_add();
    var _room = __gamemaker_room_create(_handle, _name);
    return _room;
}

/// @param {Asset} _handle description
/// @param {String} _name description
/// @returns {Struct.GameMakerRoom|Undefined}
function __gamemaker_room_create(_handle, _name) {
    ///
    var _room = new GameMakerRoom();
    _room["#handle"] = _handle;
    _room["#name"]   = _name;
    /// save room to lookup
    __GAMEMAKER_ROOM_ASSETS[_name] = _room;
    /// add room controller to room
    var _instance = room_instance_add(_handle, 0, 0, __object_gamemaker_roomcontroller);
    ///
    return _room;
}