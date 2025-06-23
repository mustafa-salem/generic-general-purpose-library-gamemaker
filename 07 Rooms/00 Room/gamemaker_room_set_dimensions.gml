/// ----------------------------------------------------------------------------
/// @function gamemaker_room_set_dimensions(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} room
/// <parameter_description>
///
/// @param {integer} x
/// <parameter_description>
///
/// @param {integer} y
/// <parameter_description>
///
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_room_set_dimensions(parameters = {}) {
    var _room        = parameters[$ "room"]
    var _x_dimension = parameters[$ "x"]
    var _y_dimension = parameters[$ "y"]
    if (_x_dimension != undefined) {
        if () {
            room_width = _x_dimension
        } else {
            room_set_width(index, _x_dimension)
        }
    }
    if (_y_dimension != undefined) {
        if () {
            room_height = _y_dimension
        } else {
            room_set_height(index, _y_dimension)
        }
    }
    return undefined
}