/* global.entrance; create; set_event; .get; add_tags; get_id; __object_gamemaker_roomcontroller */

/// If possible, resolves a value to an instance of `GameMakerRoom`; otherwise, returns `undefined`.
/// @param {Asset.GMRoom|String} argument0 The value to resolve.
/// @returns {Struct.GameMakerRoom|Undefined}
function RoomAssetRegistry.lookup(argument0) {
    var _room = undefined;
    var _type = typeof(argument0);
    switch (_type) {
    case "number":
        return __gamemaker_room_get(argument0);
    case "ref":
        _room = __gamemaker_room_get(argument0);
        break;
    case "string":
        _room = asset_get_index(argument0);
        _room = __gamemaker_room_get(_room);
        break;
    case "struct":
        _room = (argument0 instanceof GameMakerRoom ? argument0 : undefined);
        break;
    }
    return _room;
}

/// If possible, resolves a value to the handle of a room; otherwise, returns `undefined`.
/// @param {Any} argument0 The value to resolve.
/// @returns {Asset.GMRoom|Undefined}
function gamemaker_roomhandle(argument0) {
    if (argument_count != 1) {
        throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
    }
    /// gamemaker_room_exists
    static __context = __gamemaker_room_context();
    return;
}

/// Checks whether a room exists.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_room_exists(parameters) {
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
    var _room = parameters.room;
    var _exists;
    return _exists;
}

/// Gets the name of a room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {String|Undefined}
function gamemaker_room_get_name(parameters) {
    if (argument_count != 1) {
        throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
    }
    if (typeof(parameters) != "struct") {
        throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
    }
    if (!struct_exists(parameters, "room")) {
        throw new InvalidArgumentException("'parameters.room' must be passed.");
    }
    return _return;
}

/// Checks whether the targeted room is persistent.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_room_get_persistent(parameters) {
    if (argument_count != 1) {
        throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
    }
    if (typeof(parameters) != "struct") {
        throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
    }
    if (!struct_exists(parameters, "room")) {
        throw new InvalidArgumentException("'parameters.room' must be passed.");
    }
    return _return
}

/// Sets whether the targeted room is persistent.
/// **NOTE:** A persistent room, once visited, can only be made non-persistent from inside that room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// `parameters.persistent` Whether the targeted room should be persistent.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_room_set_persistent(room: object, persistent: boolean) {
    if (argument_count != 1) {
        throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
    }
    if (typeof(parameters) != "struct") {
        throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
    }
    if (!struct_exists(parameters, "room")) {
        throw new InvalidArgumentException("'parameters.room' must be passed.");
    }
    if (!struct_exists(parameters, "persistent")) {
        throw ("`parameters.persistent` must be passed");
    }
    var _room       = parameters["room"];
    var _persistent = parameters["persistent"];
    if (_room == room) {
        room_persistent = _persistent
    } else {
        room_set_persistent(_room, _persistent)
    }
    return;
}

/// Gets the x dimension of the targeted room, in pixels.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_room_get_x_dimension(parameters) {
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
    if (_room == room) {
        return room_width;
    }
    return room_get_info(_room).width;
}

/// Gets the y dimension of the targeted room, in pixels.
/// ---
/// `parameters.room`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_room_get_y_dimension(parameters) {
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
    if (_room == room) {
        return room_height;
    }
    return room_get_info(_room).height;
}

/// Sets the dimensions of a room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// `parameters.x` The width of the room, in pixels.
/// `parameters.y` The height of the room, in pixels.
/// @param {Struct} parameters
/// @returns {Undefined}
function gamemaker_room_set_dimensions(parameters) {
    if (argument_count != 1) {
        throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
    }
    if (typeof(parameters) != "struct") {
        throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
    }
    if (!struct_exists(parameters, "room")) {
        throw new InvalidArgumentException("'parameters.room' must be passed.");
    }
    if (!(struct_exists(parameters, "x") or struct_exists(parameters, "y"))) {
        throw new InvalidArgumentException("'parameters' must have property 'x' and/or 'y'.");
    }
    if (_room == undefined) {
        throw new Throwable("'room' must be a room.");
    }
    if (!is_numeric(_x_dimension)) {
        throw new InvalidArgumentException("If 'parameters' has property 'x', it must be a positive number.");
    }
    if (!is_numeric(_y_dimension)) {
        throw new InvalidArgumentException("If 'parameters' has property 'y', it must be a positive number.");
    }
    var _room       = gamemaker_roomhandle(parameters["room"]);
    var _x_dimension = parameters["x"];
    var _y_dimension = parameters["y"];
    if (_room == room) {
        if (_x_dimension != undefined) {
            room_width = _x_dimension;
        }
        if (_y_dimension != undefined) {
            room_height = _y_dimension;
        }
    } else {
        if (_x_dimension != undefined) {
            room_set_width(_room, _x_dimension);
        }
        if (_y_dimension != undefined) {
            room_set_height(_room, _y_dimension);
        }
    }
    return;
}


/// Attaches an event handler to a room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// `parameters.event` The event to target; must be a string.
/// `parameters.priority` The priority of the handler; must be a number.
/// `parameters.handler` The handler to attach to the event; must be a function.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_room_attach_eventhandler(parameters) {
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
    if (!struct_exists(parameters, "event")) {
        throw new InvalidArgumentException("'parameters.event' must be passed.");
    }
    if (!struct_exists(parameters, "handler")) {
        throw new InvalidArgumentException("'parameters.handler' must be passed.");
    }
    /// Main Functionality
    var _room    = parameters["room"];
    var _event   = parameters["event"];
    var _handler = parameters["handler"];
    _room = RoomAssetRegistry.lookup(_room);
    _room["#eventhandlers"][_event] ??= [];
    _room["#eventhandlers"][_event].push(_handler);
    return;
}

/// Triggers an event on a room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// `parameters.event` The event to trigger; it must be resolvable to an event.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_room_trigger_event(parameters) {
    var _room;
    var _event;
    var _eventhandlers;
    if (argument_count != 1) {
        throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
    }
    if (typeof(parameters) != "struct") {
        throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
    }
    if (!struct_exists(parameters, "room")) {
        throw new InvalidArgumentException("'parameters.room' must be passed.");
    }
    if (_room["#eventhandlers"][_event] == undefined) {
        return;
    }
    _eventhandlers = _room["#eventhandlers"][_event];
    for (let i = 0; i < _eventhandlers.length; i++) {
        _eventhandlers[i]();
    }
    return;
}

/// Gets the entryway hint for a room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Any}
function gamemaker_room_get_entryway(parameters) {
    if (argument_count != 1) {
        throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
    }
    if (typeof(parameters) != "struct") {
        throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
    }
    if (!struct_exists(parameters, "room")) {
        throw new InvalidArgumentException("'parameters.room' must be passed.");
    }
    return RoomAssetRegistry.lookup(room).private.entrance;
}