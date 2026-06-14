/*
#macro GAMEMAKER_TYPEOF_NUMBER "number"
#macro GAMEMAKER_TYPEOF_STRING "string"
#macro GAMEMAKER_TYPEOF_ARRAY "array"
#macro GAMEMAKER_TYPEOF_BOOLEAN "bool"
#macro GAMEMAKER_TYPEOF_INT32 "int32"
#macro GAMEMAKER_TYPEOF_INT64 "int64"
#macro GAMEMAKER_TYPEOF_POINTER "ptr"
#macro GAMEMAKER_TYPEOF_UNDEFINED "undefined"
#macro GAMEMAKER_TYPEOF_NUMBER "null"
#macro GAMEMAKER_TYPEOF_NUMBER "method"
#macro GAMEMAKER_TYPEOF_NUMBER "struct"
#macro GAMEMAKER_TYPEOF_NUMBER "ref"
#macro GAMEMAKER_TYPEOF_NUMBER "unknown"
*/

function is_integer(value) {
    return is_numeric(value) and Math.round(value) == value
}

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

    return _array.includes(_value)
}

/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// @returns {type}
function is_script_function (parameters = {}) {
    return _return
}

/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// @returns {type}
function is_builtin_function (parameters = {}) {
    return _return
}

function is_vertex_buffer_handle(value) {
    return is_handle(value) and string_starts_with(string(value), "ref vertex buffer")
}

function is_vertex_format_handle(value) {
    return is_handle(value) and string_starts_with(string(value), "ref vertex format")
}

function is_vertex_buffer_id(value) {
    return is_integer(value) and value >= 0
}

function is_vertex_buffer(variable) {
    return is_vertex_buffer_struct(argument0) or is_vertex_buffer_handle(argument0)
}

function is_vertex_buffer_struct(variable) {
    return variable instanceof VertexBuffer
}
