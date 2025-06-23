/// collision_get_collidees

/// gamemaker_construct_get_eventmethod({ construct : "obj_laserscythe" })

// gamemaker_construct_get_eventmethod({ construct : "regular_bullet_object", event : "create_event" })

/// ----------------------------------------------------------------------------
/// @function value_is_instance_of_construct(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function checks whether a given value is an instance of a construct.
/// ----------------------------------------------------------------------------
/// @param {any} value
/// The value to check.
///
/// @param {type|array<type>} construct
/// The construct or array of constructs to check.
///
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// <return_description>
/// ----------------------------------------------------------------------------
function value_is_instance_of_construct(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} object
/// <parameter_description>
/// @param {type} callable
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_construct_set_constructor(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @function function_name(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} parameter_name
/// <parameter_description>
///
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_construct_get_eventmethod(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get an array of all instances of constructs that
/// pass a predicate.
/// ----------------------------------------------------------------------------
/// @param {struct} parameters
///
/// @param {all|string|struct|array<string|struct>} parameters.construct
/// The constructs of which to return their instances.
///
/// @param {callable} [parameters.predicate]
/// As argument0 { array, element, index } will be passed to this callable and
/// it must return a boolean to determine whether to return the element.
/// ----------------------------------------------------------------------------
/// @returns {array<struct>}
/// ----------------------------------------------------------------------------
function gamemaker_construct_get_instances(parameters) {
    return _return
}

function Construct() constructor {

    static create_instance = function(parameters = {}) {
        var _instance = new ConstructInstance()
        /// variables
        var _variables
        for (var i = 0; i < <expression>; i++) {
            _instance[$ ""] = _variable
        }
        return _instance
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @param {struct} parameters
    /// The struct containing the arguments to pass to the function.
    /// @param {type} parameters.name
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @returns {any}
    /// <description>
    /// ----------------------------------------------------------------------------
    static get_variable = function(parameters = {}) {
        return _return
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @param {struct} parameters
    /// The struct containing the arguments to pass to the function.
    /// @param {type} parameters.name
    /// <description>
    /// @param {type} parameters.value
    /// <description>
    /// @param {type} parameters.expression
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @returns {struct} self
    /// ----------------------------------------------------------------------------
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

/// ----------------------------------------------------------------------------
/// construct_object
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