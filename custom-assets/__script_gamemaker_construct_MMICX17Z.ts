// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――― INITIALIZATION ―――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function __gamemaker_construct_context() {
    static __context = (function() {
        var _context = __gamemaker_context();
        _context["construct"] = {};
        _context["construct"]["constructs"] = {};
        return _context["construct"];
    })();
    return __context;
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――― INITIALIZATION ―――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// If possible, resolves a value to an instance of `GameMakerConstruct`; otherwise, returns `undefined`.
/// @param {Any} argument0 The value to resolve.
/// @returns {Struct.GameMakerConstruct|Undefined}
function gamemaker_construct(argument0) {
    static __context = __gamemaker_construct_context();
    return __context["constructs"][argument0];
}

/// parameters.name
/// @returns {Struct.GameMakerConstruct}
function gamemaker_construct_create(argument0) {
    static __context = __gamemaker_construct_context();
    var _name   = argument0["name"];
    var _parent = argument0["parent"];
    var _construct = new GameMakerConstruct();
    _construct["#parent"] = _parent;
    __context["constructs"][_name] = _construct;
    return _construct;
}

/// @param {Struct} parameters
/// construct
/// position
/// position.x
/// position.y
/// @returns {Struct.GameMakerConstructInstance}
function gamemaker_construct_instantiate(parameters = {}) {
    var _constructinstance = new GameMakerConstructInstance();
    gamemaker_object_instantiate();
    return _constructinstance;
}

/// parameters.name
/// parameters.value
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_construct_set_variable(parameters = {}) {
    return undefined;
}

/// collision_get_collidees

/// gamemaker_construct_get_eventmethod({ construct : "obj_laserscythe" })

// gamemaker_construct_get_eventmethod({ construct : "regular_bullet_object", event: "Create Event" })

/// 
/// @param {type} object
/// @param {type} callable
/// @returns {type}
function gamemaker_construct_set_constructor(parameters = {}) {
    return _return
}

/// 
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_construct_get_eventmethod(parameters = {}) {
    return _return
}

/// This function is used to get an array of all instances of constructs that
/// pass a predicate.
/// @param {Struct} parameters
/// @param {all|string|struct|Array<string|struct>} parameters.construct
/// The constructs of which to return their instances.
/// @param {callable} [parameters.predicate]
/// As argument0 { array, element, index } will be passed to this callable and
/// it must return a boolean to determine whether to return the element.
/// @returns {Array<struct>}
function gamemaker_construct_get_instances(parameters) {
    return _return
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

class GameMakerConstruct {

    this["#parent"] = undefined;

    /// This function is used to get count of all instances of a construct.
    public get instancecount(): number {
        var _construct;
        var _instancecount = 0;
        with (construct_object) {
            /// variable_instance_exists(this, "#constructinstance")
            if (this["#constructinstance"].get_construct() == _construct) {
                _instancecount++;
            }
        }
        return _instancecount;
    }
    
    static attach_eventhandler = function(parameters = {}) {
        return this;
    };

    static instantiate = function(parameters = {}) {
        var _instance = new GameMakerConstructInstance()
        /// variables
        var _variables
        for (let i = 0; i < <expression>; i++) {
            _instance[""] = _variable
        }
        return _instance
    }

    /// 
    /// @param {Struct} parameters
    /// The struct containing the arguments to pass to the function.
    /// @param {type} parameters.name
    /// @returns {any}
    static get_variable = function(parameters = {}) {
        return _return
    }

    /// 
    /// @param {Struct} parameters
    /// The struct containing the arguments to pass to the function.
    /// @param {type} parameters.name
    /// @param {type} parameters.value
    /// @param {type} parameters.expression
    /// @returns {Struct} this
    static set_variable = function(parameters = {}) {
        return _return
    }

    /// ----------------------------------------------------------------------------
    /// Events
    /// ----------------------------------------------------------------------------
    private.eventhandlers = get_construct().private.eventhandlers

    trigger_event    = method(this, eventtarget_trigger_event)
    eventtarget_get_eventhandler = method(this, eventtarget_get_eventhandler)
    attach_eventhandler = method(this, eventtarget_attach_eventhandler)
    
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// ----------------------------------------------------------------------------
/// Construct Object
/// ----------------------------------------------------------------------------
gamemaker_object(construct_object)
protected ["Create Event"](): void {
    if (not variable_instance_exists(this, "construct_instance")) {
        construct_instance = myconstructor()
    }
    execute_parentevent(argument0)
}})
protected ["Destroy Event"](): void {
    construct_instance.trigger_event("Destroy Event");
    execute_parentevent(argument0)
}})
protected ["Clean Up Event"](): void {
    construct_instance.trigger_event("Clean Up Event");
    execute_parentevent(argument0)
}})
protected ["Step Event"](): void {
    construct_instance.trigger_event("Step Event");
    execute_parentevent(argument0)
}})

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
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
/// **NOTE:** Triggers the `Destroy Event` and then the `Clean Up Event`
/// ---
/// `parameters.instance`
/// @param {Struct} parameters
/// @returns {Undefined}
function gamemaker_constructinstance_destroy(parameters) {
    return undefined;
}

/// Makes instances not exist non-destructively.
/// **NOTE:** Triggers `Clean Up Event`
/// ---
/// @param {type} instance
/// @returns {Undefined}
function gamemaker_constructinstance_cleanup(parameters = {}) {
    return undefined
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
    var _instance = gamemaker_object_instantiate(x, y, obj_move_to_point)
    _instance.target = id
    _instance.movex = argument0
    _instance.movey = argument1
    _instance.movemax = argument2
    return _instance;
}

/// ----------------------------------------------------------------------------
/// obj_move_to_point
/// ----------------------------------------------------------------------------
gamemaker_construct_create({ name: "obj_move_to_point", parent: "" })
protected ["Create Event"](): void {
    target = 923
    moved = 0
    movetimer = 0
    movex = 0
    movey = 0
    movemax = 10
    charmarker = 0
}})
protected ["Step Event"](): void {
    if (!instance_exists(target)) {
        this.destroy();
        return;
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
    target.x = Interpolation.lerp(x, movex, (movetimer / movemax))
    target.y = Interpolation.lerp(y, movey, (movetimer / movemax))
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
        this.destroy();
    }
    if (target == obj_move_to_point)
        this.destroy();
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

/// 
/// @param {type} parameter_name
/// <parameter_description>
///
/// @returns {Struct|Undefined}
function gamemaker_constructinstance_reconfigure(parameters = {}) {
    var _instances = <expression>
    for (let i = 0; i < _instances.length; i++) {
        var _instance = _instances[i]
        _instance.reconfigure(parameters)
    }
}

/// this.reconfigure = method(this, reconfigure)

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

class GameMakerConstructInstance {

    /// @type {Struct}
    ///
    this.private = {}

    /// <description>
    this.collision = function() {

    }

    /// <description>
    this.get_object_instance = gamemaker_constructinstance_get_object_instance

    /// <description>
    this.get_object_instance_handle = gamemaker_constructinstance_get_object_instance_handle
    
    public set position(position: Vector2) {
        parameters.instance = this
        gamemaker_constructinstance_set_position(parameters)
        return this
    }

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
    /// @returns {Struct.GameMakerConstructInstance} this
    static set_tags = function(parameters = {}) {
        return this
    }

    /// <description>
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @param {Array<String>} parameters.tags
    /// @returns {Struct.GameMakerConstructInstance} this
    static add_tags = function(parameters = {}) {
        return this
    }

    /// <description>
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// @param {Array<String>} parameters.tags
    /// @returns {Struct.GameMakerConstructInstance} this
    static remove_tags = function(parameters = {}) {
        return this
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
    this["#eventhandlers"] = variable_clone(get_construct()["#eventhandlers"])

    trigger_event    = method(this, GameMakerConstruct.trigger_event)
    get_eventhandler = method(this, GameMakerConstruct.get_eventhandler)
    attach_eventhandler = method(this, GameMakerConstruct.attach_eventhandler)

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
