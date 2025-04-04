/// ----------------------------------------------------------------------------
/// @description
/// This function is used to create a new room asset.
/// ----------------------------------------------------------------------------
/// @parameter {string} name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {struct}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_room_create(parameters = {}) {
    var _handle = room_add()
    return new Room()
}