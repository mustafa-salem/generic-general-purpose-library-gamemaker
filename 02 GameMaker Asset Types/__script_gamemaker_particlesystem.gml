part_particles_clear(ind);

part_particles_count(ind);

part_system_angle(ind, angle);

part_system_clear(ind);

part_system_colour(ind, color, alpha);

part_system_depth(ind, depth);

part_system_draw_order(ind, oldtonew);

part_system_get_layer(ind);

part_system_global_space(ind, enable);

part_system_layer(ps, layer);

part_system_position(ind, x, y);

part_system_update(ind);

/// GameMakerParticleSystem
/// GameMakerParticleSystemInstance

function ParticleSystemInstanceGeneric(arguments) constructor {

    destroy = function() {
        part_system_destroy(particle_system_id)
    }

    position = function(arguments) {
        part_system_position(particle_system_id, arguments.x, arguments.y)
    }

    asset = arguments.asset
    layer = layer_create(arguments[$ "depth"] ?? 0)
    persistent = arguments[$ "persistent"] ?? false

    particle_system_id = part_system_create_layer(layer, persistent, asset)
    if (arguments[$ "x"] and arguments[$ "y"]) {
        position({ x : arguments.x, y : arguments.y })
    }

}

/// 
/// @param {type} instance
/// @returns {type}
function gamemaker_particlesysteminstance_create(parameters = {}) {
    /// part_system_create([partsys]);
    /// part_system_create_layer(layer_id, persistent, [partsys])
    return _return
}

/// 
/// @param {type} instance
/// @returns {Undefined}
function gamemaker_particlesysteminstance_destroy(parameters = {}) {
    var _handle = gamemaker_particlesysteminstance_get_handle(parameters)
    if ((_handle != undefined) and part_system_exists(_handle)) {
        part_system_destroy(_handle)
    }
    return undefined
}

gamemaker_particlesysteminstance_draw

part_system_drawit(ind);

/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_particlesysteminstance_exists(parameters = {}) {
    /// part_system_exists(ind);
    return _return
}

/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_particlesysteminstance_get_handle(parameters = {}) {
    return _return
}

/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_particlesysteminstance_get(parameters = {}) {
    return _return
}

gamemaker_particlesysteminstance_set_autodraw

part_system_automatic_draw(ind, automatic);

gamemaker_particlesysteminstance_set_autoupdate

part_system_automatic_update(ind, automatic);