// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// 
/// @param {type} parameter_name
/// <parameter_description>
///
/// @returns {type}
function ingame_entity_precreate(parameters = {}) {
    return _return
}

/// 
/// @param {type} ingame_entity
/// <parameter_description>
///
/// @param {type} x_position
/// <parameter_description>
///
/// @param {type} y_position
/// <parameter_description>
///
/// @param {type} z_position
/// <parameter_description>
///
/// @param {type} layer
/// <parameter_description>
///
/// @returns {Struct}
function gamemaker_construct_create_instance(parameters = {}) {
    var _ingame_entity = new InGameEntityInstance()
    var _object_instance = gamemaker_object_create_instance({ x : 0, y : 0 })
    _ingame_entity.private.object_instance = _object_instance
    return _ingame_entity
}

/// 
/// @param {type} instance
/// <parameter_description>
/// @param {type} parameter_name
/// <parameter_description>
/// @returns {Undefined}
function gamemaker_constructinstance_destroy(parameters = {}) {
    return undefined
}

/// 
/// @param {type} instance
/// <parameter_description>
/// @param {type} parameter_name
/// <parameter_description>
/// @returns {Undefined}
function gamemaker_constructinstance_cleanup(parameters = {}) {
    return undefined
}

/// 
/// @param {type} ingame_entity
/// <parameter_description>
///
/// @returns {Struct|Undefined}
function ingame_entity_instance_get(parameters = {}) {
    return _return
}

/// 
/// @param {type} parameter_name
/// <parameter_description>
///
/// @returns {Struct|Undefined}
function gamemaker_constructinstance_reconfigure(parameters = {}) {
    var _instances = <expression>
    for (var i = 0; i < array_length(_instances); i++) {
        var _instance = _instances[i]
        _instance.reconfigure(parameters)
    }
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function InGameEntityInstance() constructor {

    private = {}

    static exists = function(parameters = {}) {
        return _return
    }

    self.exists = method(self, exists)

    static create = function(parameters = {}) {
        if (parameters.object_instance == undefined) {
            private.object_instance = gamemaker_object_create_instance({
                object     : ingame_entity_object,
                x_position : 0,
                y_position : 0,
                variables  : { ingame_entity : self },
            })
        }
        return self
    }

    self.create = method(self, create)

    static destroy = function(parameters = {}) {
        private.object_instance.destroy()
        return self
    }

    self.destroy = method(self, destroy)

    static reconfigure = function(parameters = {}) {
        return self
    }

    self.reconfigure = method(self, reconfigure)

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

gamemaker_object(ingame_entity_object)
.set_event({ event : "create_event", callable : function(parameters = {}) {
    if (self[$ "ingame_entity"] == undefined) {
        ingame_entity = gamemaker_construct_create_instance({ object_instance : self })
    }
}})
.set_event({ event : "step_event", callable : function(parameters = {}) {
    ingame_entity.trigger_event({ event : "step_event" })
}})
.set_event({ event : "draw_event", callable : function(parameters = {}) {
    ingame_entity.trigger_event({ event : "draw_event" })
}})
