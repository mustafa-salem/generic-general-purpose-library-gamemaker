// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――― INITIALIZATION ―――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function __gamemaker_construct_context() {
    static __context = (function() {
        var _context = __gamemaker_context();
        _context[$ "construct"] = {};
        _context[$ "construct"][$ "constructs"] = {};
        return _context[$ "construct"];
    })();
    return __context;
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――― INITIALIZATION ―――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// If possible, resolves a value to an instance of `GameMakerConstruct`; otherwise, returns `undefined`.
/// @param {Any} argument0 The value to resolve.
/// @returns {Struct.GameMakerConstruct|Undefined}
function gamemaker_construct(argument0) {
    static __context = __gamemaker_construct_context();
    return __context[$ "constructs"][$ argument0];
}

/// parameters.name
/// @returns {Struct.GameMakerConstruct}
function gamemaker_construct_create(argumen0) {
    static __context = __gamemaker_construct_context();
    var _name   = argumen0[$ "name"];
    var _parent = argumen0[$ "parent"];
    var _construct = new GameMakerConstruct();
    _construct[$ "#parent"] = _parent;
    __context[$ "constructs"][$ _name] = _construct;
    return _construct;
}

/// construct
/// [x_position]
/// [y_position]
/// @param {Struct} parameters 
/// @returns {Struct.GameMakerConstructInstance}
function gamemaker_construct_create_instance(parameters = {}) {
    var _constructinstance = new GameMakerConstructInstance();
    gamemaker_object_create_instance();
    return _constructinstance;
}

/// This function is used to get count of all instances of a construct.
/// @param {Struct} parameters 
/// @returns {Real}
function gamemaker_construct_get_instancecount(parameters = {}) {
    var _construct;
    var _instancecount = 0;
    with (construct_object) {
        /// variable_instance_exists(self, "#constructinstance")
    	if (self[$ "#constructinstance"].get_construct() == _construct) {
            _instancecount++;
        }
    }
    return _instancecount;
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

// gamemaker_construct_get_eventmethod({ construct : "regular_bullet_object", event : "create_event" })

/// This function checks whether a given value is an instance of a construct.
/// @param {any} value
/// The value to check.
/// @param {type|Array<type>} construct
/// The construct or array of constructs to check.
/// @returns {Bool}
function value_is_instanceof_construct(parameters = {}) {
    return _return
}

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
#endregion ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function GameMakerConstruct() constructor {

    self[$ "#parent"] = undefined;

    static get_instancecount = function () {
        return gamemaker_construct_get_instancecount({ construct : self });
    };
    
    static attach_eventhandler = function(parameters = {}) {
        return self;
    };

    static create_instance = function(parameters = {}) {
        var _instance = new GameMakerConstructInstance()
        /// variables
        var _variables
        for (var i = 0; i < <expression>; i++) {
            _instance[$ ""] = _variable
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
    /// @returns {Struct} self
    static set_variable = function(parameters = {}) {
        return _return
    }

    /// ----------------------------------------------------------------------------
    /// Events
    /// ----------------------------------------------------------------------------
    private.eventhandlers = get_construct().private.eventhandlers

    trigger_event    = method(self, eventtarget_trigger_event)
    attach_eventhandler = method(self, eventtarget_get_eventhandler)
    attach_eventhandler = method(self, eventtarget_attach_eventhandler)
    
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// ----------------------------------------------------------------------------
/// Construct Object
/// ----------------------------------------------------------------------------
gamemaker_object(construct_object)
.set_event({ event : "create_event", callable : function() {
    if (not variable_instance_exists(self, "construct_instance")) {
        construct_instance = myconstructor()
    }
    execute_parentevent(argument0)
}})
.set_event({ event : "destroy_event", callable : function() {
    construct_instance.trigger_event({ event : "destroy_event" })
    execute_parentevent(argument0)
}})
.set_event({ event : "cleanup_event", callable : function() {
    construct_instance.trigger_event({ event : "cleanup_event" })
    execute_parentevent(argument0)
}})
.set_event({ event : "step_event", callable : function() {
    construct_instance.trigger_event({ event : "step_event" })
    execute_parentevent(argument0)
}})