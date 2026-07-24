export class RoomManager {

    static #currentRoom: object | null = null;

    /**
     * The room that is currently running.
     * 
     * Null before any room has been entered.
     */
    public static get currentRoom(): object | null {
        return this.#currentRoom;
    }

    public static createRoom() {

    }

    /// Makes the game go to a room.
    /// **NOTE:** If called, the rest of the current event will still be executed, but you cannot create non-persistent object instances for the rest of the event.
    /// **NOTE:** Persistent object instances of persistent objects will have their object variables set, but instances make
    /// persistent upon their creation will not.
    /// **NOTE:** After the current Object Event is done running, the Room End Event is executed for each instance, and then if the room is non-persistent Clean Up for each non-persistent instance.
    /// **NOTE:** `room` will not change until the Pre-Creation Code of the instances in the room to go to.
    /// ---
    /// `parameters.room` The room to target; it must be resolvable to a room.
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @returns {Undefined}
    public static gotoRoom() {
        if (argument_count != 1) {
            throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
        }
        if (typeof(parameters) != "struct") {
            throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
        }
        if (!struct_exists(parameters, "room")) {
            throw new InvalidArgumentException("'parameters.room' must be passed.");
        }
        var _room = parameters["room"];
        var _room_handle = gamemaker_roomhandle(_room);
        room_goto(_room_handle);
        return;
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