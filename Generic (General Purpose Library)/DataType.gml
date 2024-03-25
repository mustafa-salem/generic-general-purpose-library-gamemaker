/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#region    –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#endregion –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#region    –––––––––––––––––––– SCRIPT_FUNCTIONS ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @function is_integer(value)
/// ----------------------------------------------------------------------------
function is_integer(value) {
    return is_numeric(value) and round(value) == value
}

/// ----------------------------------------------------------------------------
/// @function is_integer(value)
/// ----------------------------------------------------------------------------
function is_non_negative_integer(value) {
    return is_integer(value) and value >= 0
}


function is_primitive_type_constant(_value) {
    static _array = [
        PRIMITIVE_TYPE_CONSTANT.POINT_LIST,
        PRIMITIVE_TYPE_CONSTANT.LINE_LIST,
        PRIMITIVE_TYPE_CONSTANT.LINE_STRIP,
        PRIMITIVE_TYPE_CONSTANT.TRIANGLE_LIST,
        PRIMITIVE_TYPE_CONSTANT.TRIANGLE_STRIP,
        PRIMITIVE_TYPE_CONSTANT.TRIANGLE_FAN,
    ]

    return array_contains(_array, _value)
}

/******************************************************************************/
#region    –––––––––––––––––––– HANDLE ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @function is_vertex_buffer_handle(value)
/// ----------------------------------------------------------------------------
function is_vertex_buffer_handle(value) {
    return is_handle(value) and string_starts_with(string(value), "ref vertex buffer")
}

/// ----------------------------------------------------------------------------
/// @function is_vertex_format_handle(value)
/// ----------------------------------------------------------------------------
function is_vertex_format_handle(value) {
    return is_handle(value) and string_starts_with(string(value), "ref vertex format")
}

/******************************************************************************/
#endregion –––––––––––––––––––– HANDLE ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– ID ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @function is_vertex_buffer_id(value)
/// ----------------------------------------------------------------------------
function is_vertex_buffer_id(value) {
    return is_integer(value) and value >= 0
}

/******************************************************************************/
#endregion –––––––––––––––––––– ID ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– TYPECHECKING ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @function is_vertex_buffer(variable)
/// ----------------------------------------------------------------------------
function is_vertex_buffer(variable) {
    return is_vertex_buffer_struct(argument0) or is_vertex_buffer_handle(argument0)
}

/// ----------------------------------------------------------------------------
/// @function is_vertex_buffer_struct(variable)
/// ----------------------------------------------------------------------------
function is_vertex_buffer_struct(variable) {
    return is_struct(argument0) and is_instanceof(argument0, VertexBuffer)
}



/******************************************************************************/
#endregion –––––––––––––––––––– TYPECHECKING ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#endregion –––––––––––––––––––– SCRIPT_FUNCTIONS ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/
