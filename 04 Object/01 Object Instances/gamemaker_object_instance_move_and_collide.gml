/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @parameter {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @parameter {type} parameters.name
/// <description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <description>
/// ----------------------------------------------------------------------------
function gamemaker_object_instance_move_and_collide(parameters = {}) {
    with (_object_instance) {
        move_and_collide(_x_distance, _y_distance, _collidables)
    }
    return undefined
}