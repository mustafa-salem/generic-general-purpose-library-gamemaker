function gamemaker_layer(argument0) {

}

function gamemaker_layer_exists(parameters) {
    return layer_exists(parameters.layer)
}


function gamemaker_layer_get_elements(parameters) {
    return layer_get_all_elements(parameters.layer)
}

/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_layer_create(parameters = {}) {
    layer_create(depth, [name])
    return undefined
}

/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_layer_destroy(parameters) {
    layer_destroy(layer_id)
    return undefined
}

function gamemaker_layer_set_targetroom() {
    /// layer_set_target_room
}

function gamemaker_layer_get_objectinstances() {
    /// layer_instance_get_instance
}

class GameMakerRoomLayer {

    /// get_elements

    /// get_objectinstances

}