/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_path_(parameters = {}) {
    return _return
}

path_start
path_end

path_get_kind
path_get_length
path_get_name
path_get_number
path_get_point_speed
path_get_point_x
path_get_point_y
path_get_precision
path_get_speed

path_add
path_add_point
path_change_point
path_insert_point
path_delete_point
path_clear_points
path_append
path_assign
path_delete
path_duplicate
path_flip
path_mirror
path_reverse
path_rotate
path_rescale
path_set_closed
path_set_kind
path_set_precision
path_shift

path_index
path_position
path_positionprevious
path_speed
path_scale
path_orientation
path_endaction

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// 
/// @param {type} path
/// @returns {Bool}
function gamemaker_path_exists(parameters = {}) {
    path_exists(index)
    return _return
}

/// 
/// @param {Path Asset} path
/// The index of the path to check.
/// @param {real} pos
/// How far through the path to check. Between 0 (start) and 1 (end).
/// @returns {real}
function gamemaker_path_get_x_position(parameters = {}) {
    path_get_x(ind, pos)
    return _return
}

/// 
/// @param {Path Asset} path
/// The index of the path to check.
/// @param {real} pos
/// How far through the path to check. Between 0 (start) and 1 (end).
/// @returns {real}
function gamemaker_path_get_x_position(parameters = {}) {
    path_get_y(ind, pos)
    return _return
}

/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_path_is_closed(parameters = {}) {
    path_get_closed(index)
    return _return
}

/// 
/// @param {type} parameter_name
/// @param {type} parameter_name
/// @param {type} parameter_name
/// @param {type} parameter_name
/// @returns {Undefined}
function gamemaker_path_draw(parameters = {}) {
    draw_path(path, x, y, absolute)
    return _return
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function Path() {

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
