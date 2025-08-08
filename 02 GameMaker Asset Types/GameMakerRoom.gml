// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――― INITIALIZATION ―――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// @param {type} name description
/// @returns {Struct}
function __gamemaker_room_context(parameters = {}) {
    static __context = (function() {
        var _context = __gamemaker_context();
        _context[$ "room"] = {};
        _context[$ "room"][$ "rooms"] = {};
        return _context[$ "room"];
    })();
    return __context;
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――― INITIALIZATION ―――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/* global.entrance; create; set_event; .get; add_tags; get_id */

/// @param {Asset} _handle description
/// @param {String} _name description
/// @returns {Struct.GameMakerRoom|Undefined}
function __gamemaker_room_create(_handle, _name) {
    static __context = __gamemaker_room_context();
    var _room = new GameMakerRoom();
    _room[$ "#handle"] = _handle;
    _room[$ "#name"] = _name;
    /// save room to lookup
    __context[$ "rooms"][$ _name] = _room;
    /// add room controller to room
    var _instance = room_instance_add(_handle, 0, 0, __gamemaker_roomcontroller_object);
    return _room;
}

/// @param {Asset} argumen0 description
/// @returns {Struct|Undefined}
function __gamemaker_room_get(argumen0) {
    static __context = __gamemaker_room_context();
    if (__context[$ "rooms"][$ argumen0] == undefined) {
        __gamemaker_room_create(argumen0, room_get_name(argumen0));
    }
    return __context[$ "rooms"][$ room_get_name(argumen0)];
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// If possible, resolves a value to an instance of `GameMakerRoom`; otherwise, returns `undefined`.
/// @param {Asset.GMRoom|String} argumen0 The value to resolve.
/// @returns {Struct.GameMakerRoom|Undefined}
function gamemaker_room(argumen0) {
    switch (typeof(argumen0)) {
    case "number":
        return __gamemaker_room_get(argumen0);
    case "ref":
        var _thetobereturned = __gamemaker_room_get(argumen0);
        return _thetobereturned;
    case "string":
        var _room = asset_get_index(argumen0);
        return __gamemaker_room_get(_room);
    case "struct":
        return (is_instanceof(argumen0, GameMakerRoom) ? argumen0 : undefined);
    default:
        return undefined;
    }
}

/// If possible, resolves a value to the handle of a room; otherwise, returns `undefined`.
/// @param {Any} argument0 The value to resolve.
/// @returns {Asset.GMRoom|Undefined}
function gamemaker_roomhandle(argument0) {
    /// gamemaker_room_exists
    static __context = __gamemaker_room_context();
    return undefined;
}

/// Checks whether a room exists.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_room_exists(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    var _room = parameters.room;
    var _exists;
    return _exists;
}

/// Gets the handle of a room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Asset.GMRoom|Undefined}
function gamemaker_room_get_handle(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    return _return;
}

/// Gets the name of a room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {String|Undefined}
function gamemaker_room_get_name(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    return _return;
}

/// Creates a new, empty, room and adds it permanently to the game (until the executable is closed).
/// **NOTE:** New rooms are not part of usual room ordering.
/// ---
/// `[parameters.name]` The name of the room.
/// @param {Struct} [parameters]
/// @returns {Struct.GameMakerRoom|Undefined}
function gamemaker_room_create(parameters = {}) {
    static __context = __gamemaker_room_context();
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    var _name = parameters.name;
    var _handle = room_add();
    var _room = __gamemaker_room_create(_handle, _name);
    return _room;
}

/// Checks whether the targeted room is persistent.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_room_get_persistent(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    return _return
}

/// Sets whether the targeted room is persistent.
/// **NOTE:** A persistent room, once visited, can only be made non-persistent from inside that room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// `parameters.persistent` Whether the targeted room should be persistent.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_room_set_persistent(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    gamemaker_guard(not struct_exists(parameters, "persistent"), "`parameters.persistent` must be passed");
    var _room       = parameters[$ "room"];
    var _persistent = parameters[$ "persistent"];
    gamemaker_guard(not is_bool(persistent), "persistent must be a boolean");
    if (_room == room) {
        room_persistent = _persistent
    } else {
        room_set_persistent(_room, _persistent)
    }
    return undefined;
}

/// Gets the x dimension, in pixels, of the targeted room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_room_get_x_dimension(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    var _room = parameters[$ "room"];
    if (_room == room) {
        return room_width;
    }
    return room_get_info(_room).width;
}

/// Gets the y dimension, in pixels, of the targeted room.
/// ---
/// `parameters.room`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_room_get_y_dimension(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    var _room = parameters[$ "room"];
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
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    gamemaker_guard((not (struct_exists(parameters, "x") or struct_exists(parameters, "y"))), new InvalidArgumentException("'parameters' must have property 'x' and/or 'y'."));
    /// typecheck #1
    var _room       = gamemaker_roomhandle(parameters[$ "room"]);
    var _x_dimension = parameters[$ "x"];
    var _y_dimension = parameters[$ "y"];
    /// typecheck #2
    gamemaker_guard((_room == undefined), new Throwable("'room' must be a room."));
    gamemaker_guard((not is_numeric(_x_dimension)), new InvalidArgumentException("If 'parameters' has property 'x', it must be a positive number."));
    gamemaker_guard((not is_numeric(_y_dimension)), new InvalidArgumentException("If 'parameters' has property 'y', it must be a positive number."));
    /// function
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
    return undefined;
}

/// Makes the game go to a room.
/// **NOTE:** Calling this function will trigger the Room End event.
/// **NOTE:** Code in the same event after this function has been called will still run.
/// **NOTE:** The room will not change until the end of the event where this function was called.
/// **NOTE:** You cannot create non-persistent object instances for the rest of the event where this function was called.
/// **NOTE:** Persistent object instances of persistent objects will have their object variables set, but instances make
/// persistent upon their creation will not.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_room_goto(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    var _room = parameters[$ "room"];
    var _room_handle = gamemaker_room_get_handle({ room : _room });
    room_goto(_room_handle);
}

/// Restarts the current room.
/// **NOTE:** This functions like `gamemaker_room_goto`, leaving and then entering the same room. Same restrictions apply.
/// @returns {Undefined}
function gamemaker_room_restart() {
    room_restart();
    return undefined;
}

/// Attaches an event handler to a room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// `parameters.event` {String} The event to target.
/// `parameters.handler` {Function} The handler to attach to the event.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_room_attach_eventhandler(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    var _room    = parameters[$ "room"];
    var _event   = parameters[$ "event"];
    var _handler = parameters[$ "handler"];
    _room[$ "#eventhandlers"][$ _event] ??= [];
    array_push(_room[$ "#eventhandlers"][$ _event], _handler);
    return undefined;
}

/// Triggers an event on a room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// `parameters.event`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_room_trigger_event(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    return undefined;
}

/// Gets the entryway hint for a room.
/// ---
/// `parameters.room` The room to target; it must be resolvable to a room.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Any}
function gamemaker_room_get_entryway(parameters) {
    gamemaker_guard(argument_count != 1, new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}."));
    gamemaker_guard((typeof(parameters) != "struct"), new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters})."));
    gamemaker_guard((not struct_exists(parameters, "room")), new InvalidArgumentException("'parameters.room' must be passed."));
    gamemaker_room(room).private.entrance = parameters.entrance;
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function GameMakerRoom() constructor {

    static prototype = {};

    /// @returns {Asset.GMRoom}
    static get_handle = function(parameters = {}) {
        return self[$ "#handle"];
    };

    /// @returns {String}
    static get_name = function(parameters = {}) {
        return self[$ "#name"];
    };

    /// @returns {Struct.GameMakerRoom} self
    static goto = function(parameters = {}) {
        parameters.room = self;
        gamemaker_room_goto(parameters);
        return undefined;
    };
    
    /// @returns {Struct.GameMakerRoom} self
    static restart = function() {
        return self;
    }
    
    /// @returns {Real}
    static get_x_dimension = function(parameters = {}) {
        parameters.room = self;
        return gamemaker_room_get_x_dimension(parameters);
    }
    
    /// @returns {Real}
    static get_y_dimension = function(parameters = {}) {
        parameters.room = self;
        return gamemaker_room_get_y_dimension(parameters);
    }
    
    /// 
    /// @returns {Struct.GameMakerRoom} self
    static set_dimensions = function(parameters = {}) {
        parameters.room = self;
        gamemaker_room_set_dimensions(parameters);
        return self;
    }

    /// @returns {Struct.GameMakerRoom} self
    static attach_eventhandler = function(parameters = {}) {
        parameters.room = self;
        gamemaker_room_attach_eventhandler(parameters);
        return self;
    };
    
    /// @returns {Struct.GameMakerRoom} self
    static trigger_event = function(parameters = {}) {
        parameters.room = self;
        gamemaker_room_trigger_event(parameters);
        return self;
    };
    
    self.get_handle          = method(self, get_handle);
    self.get_name            = method(self, get_name);
    self.goto                = method(self, goto);
    self.get_x_dimension     = method(self, get_x_dimension);
    self.get_y_dimension     = method(self, get_y_dimension);
    self.set_dimensions      = method(self, set_dimensions);
    self.restart             = method(self, restart);
    self.attach_eventhandler = method(self, attach_eventhandler);
    self.trigger_event       = method(self, trigger_event);
    
    self[$ "#handle"] = undefined;
    self[$ "#name"]   = undefined;
    self[$ "#eventhandlers"] = {};

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― OBJECTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

gamemaker_object(__gamemaker_roomcontroller_object)
.attach_eventhandler({ event : "create_event", handler : function() {
    gamemaker_room(room).trigger_event({ event : "create_event" });
}})
.attach_eventhandler({ event : "room_start_event", handler : function() {
    gamemaker_room(room).trigger_event({ event : "room_start_event" });
}})

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― OBJECTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――