/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @parameter {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @parameter {type} parameters.x
/// <description>
/// @parameter {type} parameters.y
/// <description>
/// @parameter {type} parameters.duration_seconds
/// <description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <description>
/// ----------------------------------------------------------------------------
/// .movetowards_position()
function gamemaker_constructinstance_movetowards_position(parameters = {}) {
    var _instance = gamemaker_object_create_instance(x, y, obj_move_to_point)
    _instance.target = id
    _instance.movex = argument0
    _instance.movey = argument1
    _instance.movemax = argument2
    return _instance;
}

/// ----------------------------------------------------------------------------
/// obj_move_to_point
/// ----------------------------------------------------------------------------
gamemaker_construct_create({ name : "obj_move_to_point", parent : "" })
.set_event({ event : "create_event", callable : function() {
    target = 923
    moved = 0
    movetimer = 0
    movex = 0
    movey = 0
    movemax = 10
    charmarker = 0
}})
.set_event({ event : "step_event", callable : function() {
    if (!instance_exists(target)) {
        destroy()
        return
    }
    if (moved == false) {
        x = target.x
        y = target.y
        dist = distance_to_point(movex, movey)
        dir = point_direction(x, y, movex, movey)
        amt = (dist / movemax)
        xadd = lengthdir_x(amt, dir)
        yadd = lengthdir_y(amt, dir)
        moved = true
    }
    target.x += xadd
    target.y += yadd
    if (target.object_index == obj_actor) {
        target.fake_speed = amt
        target.fake_direction = dir
    }
    movetimer += 1
    target.x = lerp(x, movex, (movetimer / movemax))
    target.y = lerp(y, movey, (movetimer / movemax))
    if (movetimer >= movemax) {
        if (target.object_index == obj_actor)
            target.fake_speed = 0
        if (charmarker == 1)
            target.fun = false
        if (charmarker == 2) {
            with (target) {
                follow = 1
                fun = false
                scr_caterpillar_interpolate()
            }
        }
        instance_destroy()
    }
    if (target == obj_move_to_point)
        instance_destroy()
}})
