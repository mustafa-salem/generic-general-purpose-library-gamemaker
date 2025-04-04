/// ----------------------------------------------------------------------------
/// @function gamemaker_room_goto(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {mixed} room
/// The value identifying the room to go to.
///
/// @parameter {mixed} [exit_point]
/// The value identifying the room's exit to use.
///
/// @parameter {mixed} [entry_point]
/// The value identifying the room's entrance to use.
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_room_goto(parameters) {
    var _room = parameters[$ "room"]

    var _room_handle = gamemaker_room_get_handle({ room : _room })

    room_goto(_room_handle)
}