// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// <description>
/// ---
/// @param {type} name description
/// @returns {type} description
function gamemaker_constructinstance_get_object_instance(parameters = {}) {
    return _return
}

/// <description>
/// ---
/// @param {type} name description
/// @returns {type} description
function gamemaker_constructinstance_get_object_instance_handle(parameters = {}) {
    return _return
}

/// <description>
/// ---
/// `collidee`
/// ---
/// @param {type} name description
/// @returns {Undefined} description
function gamemaker_constructinstance_collision(parameters = {}) {
    return undefined
}

/// This function is used to destroy construct instances.
/// ---
/// `parameters.instance`
/// @param {Struct} parameters
/// @returns {Undefined}
function gamemaker_constructinstance_destroy(parameters) {
    return undefined;
}

/// <description>
/// ---
/// @param {type} name description
/// @returns {type} description
function gamemaker_constructinstance_execute_parentevent(parameters = {}) {
    return _return
}

/// <description>
/// ---
/// `parameters.instance`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {type}
function gamemaker_constructinstance_get(parameters = {}) {
    return _return
}

/// This function returns true if and only if instance is a construct instance and an instance of the provided construct(s).
/// ---
/// `instance`
/// `construct`
/// @returns {Bool}
function gamemaker_constructinstance_is_instanceof(parameters = {}) {
    return _return
}

/// <description>
/// ---
/// `parameters.x`
/// `parameters.y`
/// `parameters.duration_seconds`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {type}
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

/// <description>
/// ---
/// `instance`
/// `callable`
/// @returns {type}
function gamemaker_constructinstance_set_creationcode(parameters = {}) {
    return _return
}

/// <description>
/// ---
/// `parameters.instance`
/// `[parameters.x]`
/// `[parameters.y]`
/// @param {Struct} parameters
/// @returns {Undefined}
function gamemaker_constructinstance_set_position(parameters) {
    return undefined;
}

/// <description>
/// ---
/// `instance`
/// `visible` {Bool}
/// @returns {Undefined}
function gamemaker_constructinstance_set_visible(parameters = {}) {
    return undefined
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function GameMakerConstructInstance() constructor {

    /// @type {Struct}
    ///
    self.private = {}

    /// <description>
    self.collision = function() {

    }

    /// <description>
    self.get_object_instance = gamemaker_constructinstance_get_object_instance

    /// <description>
    self.get_object_instance_handle = gamemaker_constructinstance_get_object_instance_handle

    /// <description>
    static is_instanceof = function(parameters = {}) {
        parameters.instance = self
        return gamemaker_constructinstance_is_instanceof(parameters)
    }
    
    self.is_instanceof = method(self, is_instanceof)

    /// <description>
    static set_position = function(parameters = {}) {
        parameters.instance = self
        gamemaker_constructinstance_set_position(parameters)
        return self
    }
    self.set_position = method(self, set_position)

    /// ----------------------------------------------------------------------------
    /// Tags
    /// ----------------------------------------------------------------------------

    /// <description>
    /// @returns {Array<String>}
    static get_tags = function() {
        var _tags = private.tags
        return _tags
    }

    /// <description>
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @param {Array<String>} parameters.tags
    /// @returns {Struct.GameMakerConstructInstance} self
    static set_tags = function(parameters = {}) {
        return self
    }

    /// <description>
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @param {Array<String>} parameters.tags
    /// @returns {Struct.GameMakerConstructInstance} self
    static add_tags = function(parameters = {}) {
        return self
    }

    /// <description>
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @param {Array<String>} parameters.tags
    /// @returns {Struct.GameMakerConstructInstance} self
    static remove_tags = function(parameters = {}) {
        return self
    }

    /// <description>
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @param {Array<String>} parameters.tags
    /// @returns {Bool}
    static has_tags = function(parameters = {}) {
        var _has_tags = false
        return _has_tags
    }

    /// <description>
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @param {Array<String>} parameters.tags
    /// @returns {Bool}
    static hasany_tag = function(parameters = {}) {
        var _hasany_tag = false
        return _hasany_tag
    }

    /// <description>
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @param {Array<String>} parameters.tags
    /// @returns {Real}
    static get_tagcount = function(parameters = {}) {
        var _tagcount = 0
        return _tagcount
    }

    /// ----------------------------------------------------------------------------
    /// Events
    /// ----------------------------------------------------------------------------
    self[$ "#eventhandlers"] = variable_clone(get_construct()[$ "#eventhandlers"])

    trigger_event    = method(self, GameMakerConstruct.trigger_event)
    attach_eventhandler = method(self, GameMakerConstruct.get_eventhandler)
    attach_eventhandler = method(self, GameMakerConstruct.attach_eventhandler)

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
